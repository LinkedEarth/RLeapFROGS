---
type: slides
---

<div><h1><img src="https://foundations.projectpythia.org/_images/GitHub-logo.png" alt="GitHub Logo" width=25% align="left"/> Lesson 2<br>Introduction to GitHub</h1></div>

---

## Github

This lesson will introduce the functions of GitHub, the de facto standard platform for collaboration and version control used by the open-source coding community.

First, let's create an account.

---

## Setting up a GitHub account

<div><h1><img src="https://github.com/LinkedEarth/RLeapFROGS/blob/main/static/module5/github_signup.png?raw=true" alt="GitHub Logo" width=25% align="left"/></h1></div>

Signing up for a new GitHub account is simple and free. After signing up you can create a new repository and try some of the features outlined in this lesson.

The linked tutorial will guide you through some of the more advanced components of a GitHub account.

[Account setup tutorial from Project Pythia](https://foundations.projectpythia.org/foundations/github/github-setup-advanced.html)


---

## What is a repository?

<div><h1><img src="https://docs.github.com/assets/cb-29762/images/help/repository/repo-create-global-nav-update.png" alt="GitHub Logo" width=25% align="left"/></h1></div>

A repository (repo) is a web-hosted file directory. A repo can be public or private and can have multiple collaborators. Repos are typically used to house coding projects, but they can also be used to store other types of files.

Some possible uses:

* Share a scientific workflow
* Publish a website
* Collaborate on a coding project
  * Track changes
  * Assign tasks
  * Maintain production and development versions simulateously and merge when appropriate

Additional resources: [Pythia - What is a GitHub Repository?](https://foundations.projectpythia.org/foundations/github/github-repos.html)

---
## Issues and Discussions

### Issues

A GitHub Issue is a note in a repository that describes a bug, suggests a new feature, or offers general feedback. Issues can be submitted by repository owners/collaborators to track tasks or by outside users with questions/suggestions.

---

### New and exisitng Issues

* When planning to write a new issue, be sure to review existing Issues first
  * Reading existing Issue posts may provide more context for your question/suggestion
  * Search key terms (see image below)
  * Upvote existing Issue that covers your bug/feature request
* Only after careful review of existing Issues should you post a new Issue (see next slide)

<div><h1><img src="https://github.com/LinkedEarth/LeapFROGS/blob/version/static/module5/GitHub_issues_search.PNG?raw=true" alt="Issues search1" width=25% align="left"/></h1></div>

---

**Creating an Issue**

1. Go to the Issues tab.
2. Click New Issue.
3. Fill in:
  * Title: Short description of the task.
  * Body: Detailed description, including context or instructions.
  * Labels: Use labels like "bug," "enhancement," "help wanted."
  * Assignees: Assign team members responsible for the issue. You can also assign yourself!
4. Click Submit New Issue.

---

### Writing a good issue

A bug report should consist of a reproducible example. Some repositories include [issue templates](https://github.com/stevemao/github-issue-templates?tab=readme-ov-file), which generally include space for <em>Expected Behavior</em>, <em>Actual Behavior</em>, <em>Steps to Reproduce the Problem</em>, and <em>Specifications (Version, Platform, Subsystem)</em>. Here's an example of a [well written issue](https://github.com/LinkedEarth/Pyleoclim_util/issues/469). Writing issues in this way makes reproducing problems (or misperceptions of problems) straightforward. This allows for smooth communication with the repository maintainers and greatly improves your chances of resolving your problems.

[More on Issues from project Pythia](https://foundations.projectpythia.org/foundations/github/github-issues.html).

---

### Using Labels for Organizations

Labels help categorize tasks. Common examples:

* Bug: For errors or problems.
* Enhancement: For new features or improvements.
* Documentation: For writing or updating guides.
* High Priority: For urgent tasks.

#### How to Add Labels

1. Go to the Issues or Pull Requests tab.
2. Click an issue or pull request.
3. In the right sidebar, click Labels and select or create a label.

---

## Discussions

GitHub Discussions provide a more open-ended forum for community engagement. A discussion topic is an open space for conversations such as steering project directions, eliciting community feedback, or offering notes on a new release.

[More on Discussions from GitHub](https://resources.github.com/devops/process/planning/discussions/)

---
## Cloning and Forking

Making a copy of a public repository can be useful in many circumstances. There are two ways to do this: <em>Clonin</em>g and <em>Forking</em>.

---

### Cloning

<div><h1><img src="https://docs.github.com/assets/cb-60499/images/help/repository/https-url-clone-cli.png" alt="GitHub Logo" width=25% align="left"/></h1></div>

Cloning a repository creates your own copy, <strong>independent</strong> of the original repo. This method is ideal for creating your own project, using an existing repo as the starting point.


A few use cases:

* Reproducing a scientific workflow
* Using the structure of a repo wherein you will infill the content
  * A website
  * A code library (R, Python, etc.)

---

### Forking
<div><h1><img src="https://user-images.githubusercontent.com/17777237/54873012-40fa5b00-4dd6-11e9-98e0-cc436426c720.png" alt="GitHub Logo" width=15% align="left"/></h1></div>

Forking a repo creates a copy that will track the original. This method is primarily used for making changes to the original repo by users without direct access. This is accomplished by a pull request, which is covered in the next module.

[Clong and Forking from project Pythia](https://foundations.projectpythia.org/foundations/github/github-cloning-forking.html)
