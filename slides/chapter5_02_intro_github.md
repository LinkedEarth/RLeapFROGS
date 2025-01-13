---
type: slides
---

<div><h1><img src="https://foundations.projectpythia.org/_images/GitHub-logo.png" alt="GitHub Logo" width=25% align="left"/> Lesson 2<br>Introduction to GitHub</h1></div>

---

## Github

This lesson will introduce the functions of GitHub, the de facto standard platform for collaboration and version control used by the open-source coding community.

In the last exercise, you will configure your GitHub account for secure logins via ssh and/or https.

---

## What is a repository?

<div><h1><img src="https://docs.github.com/assets/cb-29762/images/help/repository/repo-create-global-nav-update.png" alt="GitHub Logo" width=25% align="left"/></h1></div>

A repository (repo) is a web-hosted file directory. A repo can be public or private and can have multiple collaborators. Repos are typically used to house coding projects, but they can also be used to store other types of files.

Some possible uses:

* Collaborate on a coding project
  * Track changes
  * Assign tasks
  * Maintain production and development versions simulateously and merge when appropriate
* Share a scientific workflow
* Publish a website


---

## Issues and Discussions

### Issues

A GitHub Issue is a note is a repository that describes a bug, suggested feature, general feedback. Issues can be submitted by repository owners/collaborators to track tasks or by outside users with questions/suggestions. 

<strong>Writing a good issue</strong>:

A bug report should consist of a reproducible example. Some repositories include [issue templates](https://github.com/stevemao/github-issue-templates?tab=readme-ov-file), which generally include space for <em>Expected Behavior</em>, <em>Actual Behavior</em>, <em>Steps to Reproduce the Problem</em>, and <em>Specifications (Version, Platform, Subsystem)</em>. Here's an example of a [well written issue](https://github.com/LinkedEarth/Pyleoclim_util/issues/469). Writing issues in this way makes reproducing problems (or misperceptions of problems) straightforward. This allows for smooth communication with the repository maintainers and greatly improves your chances of resolving your problems.

[More help from project Pythia](https://foundations.projectpythia.org/foundations/github/github-issues.html). Remember, when opening issues, always submit a minimum reproducible example. It doesn't have to use your own data, just something similar that you can simulate using a random generator or write manually. [Here](https://github.com/LinkedEarth/Pyleoclim_util/issues/469) is a great example of an issue with a minimum reproducible example. 

### Discussions

GitHub Discussions provide a more open-ended forum for community engagement. A discussion topic is an open space for conversations such as steering project directions, eliciting community feedback or offering notes on a new release.

[More](https://resources.github.com/devops/process/planning/discussions/)

---

## Cloning and Forking

Making a copy of a public repository can be useful in many circumstances. There are two ways to do this.

### Cloning

Cloning a repository creates your own copy <strong>independent</strong> of the original repo. This method is ideal creating your own project, using an existing repo as the starting point.

A few use cases:

* Reproducing a scientific workflow
* Using the structure of a repo wherein you will infill the content
  * A website
  * A code library (R, Python, etc.)

### Forking

Forking a repo creates a copy that will track the original. This method is primarily used for making changes to the original repo by users without direct access. This is accomplished by a pull request, which is covered in the next module.

[Clong and Forking from project Pythia](https://foundations.projectpythia.org/foundations/github/github-cloning-forking.html)

---

## Setting up a GitHub account


[More help from project Pythia](https://foundations.projectpythia.org/foundations/github/github-setup-advanced.html)


