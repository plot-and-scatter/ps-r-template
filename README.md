# Plot + Scatter R Template

A template for simple R projects. Includes directories for input data, output data, and R scripts.

## Use

The `/scripts` folder contains six `.r` script files:

* `run.r` is the main file to be run to perform the analysis. It in turn loads the other `.r` files listed below, in the order listed.
* `libraries.r` installs and loads all libraries required for the analysis.
* `settings.r` contains all R option settings, constants, and file input and output names.
* `load.r` loads all required input and data files.
* `functions.r` includes any user-defined functions that will be needed in the analysis.
* `analysis.r` actually performs the analysis by calling functions, manipulating the loaded data, and printing output to the console (and/or saving it).

This organization of files makes it easy to know where to add required functionality, and makes the project easy to navigate.

For more complex projects, `functions.r` and `analysis.r` should probably be broken up into smalller modules.

## Running the analysis

First, open `run.r` and ensure the `WORKING.DIR` setting is correct. This should usually be set to the directory you `git clone`d the project into.

Then, the project can be run in RStudio or on the command line using Rscript.

### Using RStudio

In [RStudio](http://rstudio.com), open the `run.r` file and run the script, for instance by using the Code > Source command in the menu bar.

### Using Rscript

You can run the script from the command line by changing into the `/scripts` folder and then running:
```sh
 Rscript run.r
```

## Cloning the project for your own use

To make a new project based on this repository:

```sh
# Clone the project
$ git clone https://github.com/plot-and-scatter/ps-r-template.git my-project-name
$ cd my-project-name

# Set remotes
$ git remote set-url origin https://github.com/your-username/your-repo-name.git
$ git remote add upstream https://github.com/plot-and-scatter/ps-r-template.git

# Verify origin points to your repository and upstream points to ps-d3-template
$ git remote -v
```

## Syncing with this project after forking

Ensure you have added the upstream remote (previous step), and then follow the instructions at [https://help.github.com/articles/syncing-a-fork/](https://help.github.com/articles/syncing-a-fork/).

In brief:

```sh
# Fetch the upstream
$ git fetch upstream

# Check out your own master branch
$ git checkout master

# Merge upstream changes
$ git merge upstream/master

```