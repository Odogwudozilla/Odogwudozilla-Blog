Question:
1.	What is the app about?
	It is a personal website with a portfolio page and a blog for outlining my experiences and show examples of my work to the general public
2.	Who am I building for? 
	For myself, and the general public too as an addition to the free-form wealth of information available on the internet
3.	Features?
	User stories:
i.	As a user I want to be able to create Articles which are essentially article of experiences I find interesting
ii.	As a user I want to be able to edit Articles and delete same on the blog
iii.	As a user I want to be able to use rich text and format code blocks for example
iv.	As a user I want visitors and/or potential employers to be able to freely and easily view what I have on offer on my website
v.	As a user, I want anyone to be able to contact me via a form available on my website
vi.	As a user, I want authorised third parties to be able to contribute to content on my website
vii.	As a user, I want visitors to be able to Article comments on my website
	Articles 
i.	Create/ Edit/ Destroy
ii.	Markdown
iii.	Syntax Highlighting
iv.	Comments (using Disqus)
	Projects 
i.	Create/ Edit/ Destroy
ii.	Visualization
	Contact 
i.	Contact form
ii.	Sendgrid for automated email
	Users (authentication)
i.	Devise gem and authentication
4.	Models (tables):
	Articles
i.	Title:string
ii.	Content:text
	Project
i.	Title:string
ii.	Description:text
iii.	Link:string
	Users (all tables handled by Devise gem)
5.	Page Flow:
	Homepage
i.	Articles 
1.	Articles#index
2.	Articles#show
ii.	Projects 
1.	Project#index
2.	Project#show
iii.	Contact
iv.	
