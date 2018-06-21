Trix.config.attachments.preview.caption = {
  name: false,
  size: false
};

function uploadAttachment(attachment) {
  var file = attachment.file;
  var form = new FormData;
  form.append("Content-Type", file.type);
  form.append("photo_upload[image]", file);

  var xhr = new XMLHttpRequest;
  xhr.open("POST", "/photo_uploads.json", true);
  xhr.setRequestHeader("X-CSRF-Token", Rails.csrfToken());

  xhr.upload.onprogress = function (event) {
    var progress = event.loaded / event.total * 100;
    attachment.setUploadProgress(progress);
  }

  xhr.onload = function () {
    if (xhr.status === 201) {
      var data = JSON.parse(xhr.responseText);
      return attachment.setAttributes({
        url: data.image_url,
        href: data.image_url
      })
    }

  }
  return xhr.send(form);
}

document.addEventListener("trix-attachment-add", function (event) {
  var attachment = event.attachment;

  if (attachment.file) {
    return uploadAttachment(attachment);

  }
});