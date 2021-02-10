# sql-queries-shared
Queries for PSU Research team

A repository of commonly-used queries to share amongst colleagues.

You can also find these files [here](https://psu.app.box.com/folder/128933181789)

## Prerequistes
1. Install Git [here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) on your desktop
2. Sign in to [GitLab](https://cyberinfrastructure.psu.edu/?q=node/214) online with your Penn State Access ID and password.
3. Install [Visual Studio Code](https://code.visualstudio.com/download) (VSC) or [Azure Data Studio](https://docs.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver15) (ADS).

    >* Whether downloading VSC or ADS, you'll want to choose the User Installer option for Windows.
    >* For VSC, specify the 64 bit download.
    >* Since VSC is white-listed by Penn State, it doesn't require IT admin credentials to install.
    >* For ADS, you'll need to email DDAR support to ask them to use IT admin credentials to finish the install after downloading.

## Getting Started
*Note: These instructions were made using Azure Data Studio (ADS) as opposed to Visual Studio Code (VSC); however, the interfaces are similar. VSC requires you to first install an SQL extension before you can use it.* 
1. Install VSC or ADS. If installing ADS, you will need to close the program and reboot your machine after installation in order to access the warehouse servers.
2. Connect ADS to the warehouse "adis" server. On the ADS welcome screen, choose to create a connection to open the Connection dialogue pop-up screen. 
3. In the Connection Details screen at the bottom, complete with the following info:

    >* Connection type: Microsoft SQL Server
    >* Server: d5-inet-db.ad.psu.edu
    >* Authentication type: Windows Authentication
    >* User name: (This field will be grayed out)
    >* Password: (This field will be grayed out)
    >* Database: adis
    >* Server group: <Default>
    >* Name (optional): *Here you could enter a custom name for this server*
    >* You do not need to use the “advanced options” screen.

    Note: You can repeat this process to **create a 2nd connection to the "analytics" server**. Just choose the **Database: anaytics** from the drop down.

## Linking Visual Studio Code or Azure Data Studio to Git and GitLab
1. Create a folder *under your name* on Box. Name this folder "**repos**"

2. **Clone an existing GitLab repository to this folder on your local computer**. Go [here](https://git.psu.edu/kky1/sql-queries-shared), expand the drop down arrow and copy the **Clone with HTTPS** option.

![CopyURL](https://github.com/kky1/sql-queries-shared/blob/main/screenshots/ADS%20navigation19.JPG)

3. Open the terminal in VSC or ADS. Click **View-> Terminal**

4. At the **Terminal prompt**, type `cd ~`

5. At the **next Terminal prompt**, you need to direct the terminal to your folder via the file path. Type `"Box/b-research-analytics Shared/`INSERT YOUR NAME`/repos"` 
- **Note: You must include the quotation marks.**

6. At the **next Terminal prompt**, type `git clone https://github.com/kky1/sql-queries-shared.git`
- **Note: In the screenshot below, my folder name is `k-repos` instead of `repos` as instructed above.**

![Cloning a repos](https://github.com/kky1/sql-queries-shared/blob/main/screenshots/ADS%20navigation20.JPG)

7. Congratulations, the repository kky1/sql-queries-shared has been cloned. You now have access to all files in the repos.

## Navigating Visual Studio Code or Azure Data Studio
The vertical bar on the left contains six icons to help you navigate. Starting from the top **(screenshots below)**:

 >* **Connections** - this is where you can find the warehouse tables & views on the server to which you are connected. This is helpful to look up field names or table content.
 >* Search - not used for our purposes
 >* Notebook - not used for our purposes
 >* **Explorer** - this is where your queries are stored. We do not have the permissions to execute functions or stored procedures. We are also not able to insert or alter live tables; however, we can create temp tables and alter them (just as we did in Access).
 >* **Source Control** - this is where you commit (or update) the queries you have built. You should commit queries to Git on your machine before you push (or send) the updated versions to GitHub online.
  >* **Extensions** - VSC and ADS allows you to install extensions. In VSC, you must install a SQL extension before getting started. In ADS, you can skip this step. Some extensions allow for the visualization of your list results into charts, etc.

## Screenshots
Here are the tables and views in the "adis" server. Views are just queries built by the IT team (denormalized tables) and TMS tables.

![Connections Icon](https://github.com/kky1/sql-queries-shared/blob/main/screenshots/ADS%20navigation.JPG)

Your queries are stored in the Explorer screen.

![Explorer Icon](https://github.com/kky1/sql-queries-shared/blob/main/screenshots/ADS%20navigation2.JPG)

VSC or ADS alerts you that you have pending changes. 

![Pending Changes](https://github.com/kky1/sql-queries-shared/blob/main/screenshots/ADS%20navigation3.JPG)

You then commit (or update) these edited queries as below by clicking the checkmark commit icon. This will only update them in Git on your machine. ADS will prompt you to include a comment about the update in the dialogue box.

![Commit Changes](https://github.com/kky1/sql-queries-shared/blob/main/screenshots/ADS%20navigation5.JPG)

After committing changes to Git, you should then Push (or send) the updated queries to your repository on GitHub. This is how you can share updates with colleagues. Click on the elipses and select Push.

![Push Changes](https://github.com/kky1/sql-queries-shared/blob/main/screenshots/ADS%20navigation6.JPG) 

There are many extensions you can install within VSC or ADS to guide you to write t-sql or to enable you to visualize query results.

![Sandance Extension](https://github.com/kky1/sql-queries-shared/blob/main/screenshots/ADS%20navigation7.JPG)

## Working with Git and GitHub
Git and GitHub are just an interface to save versions of your work, and to collaborate and share those verions with colleagues. If a group were working together on a large project, they can use Git to "push" (or send) queries to one another for "compare" (or review). 

Git is located locally on your machine. GitHub is an online account where you create repositories (or folders) to store queries. It is a good idea to have a private repository (often called a sandbox for query-building) and a public repository (used to share queries amongst your colleagues once finalized). 

Within each repository, you have a default folder called **Main** or **Master** and you have **Branches** (or "working folders") usually named as **feature/userid-qryname** because these are subfolders where you can edit queries without affecting what is saved in **Main**. The whole idea of GitHub is to work on versions in the branch folders and then once finalized, merge them into main. After that, you can delete the branch folder and create a new one for the next project.

Here is a simplistic breakdown:
1. You **connect to server and build queries using VSC or ADS** which is the interface to guide you in writing t-sql queries (much like how we use Access or SAS to write queries). 
2. You **commit** (or update) the queries to Git. This updates the queries in Git on your machine.
3. Then you **push** (or send) the updated queries to GitHub. 
4. In GitHub, you will then receive a notice to **compare and pull request**. Compare means you review the updated query and pull means you retrieve it to your repository on GitHub. When collaborating, this is when colleagues might ask you to review a query and provide comments, etc.
5. Once you are confident in the query, you can **merge** it to the Main (or default) repository. 

## GitHub Screenshots
Here is a very simplistic sandbox repository with just one branch "feature/KKYCAAROC-1-2" 

![GitHub repository overview](https://github.com/kky1/sql-queries-shared/blob/main/screenshots/ADS%20navigation11.JPG)

After I **commit** query updates to Git and **push** them to GitHub, I will see the following **compare & pull request** when I login to my GitHub account. Because I wasn't collaborating with anyone, I just click **Compare & pull request**  and on the next screen click **Create pull request** to move the process along.

![Compare pull request](https://github.com/kky1/sql-queries-shared/blob/main/screenshots/ADS%20navigation8.JPG)

![Create pull request](https://github.com/kky1/sql-queries-shared/blob/main/screenshots/ADS%20navigation9.JPG)

Now I am able to **Merge pull request** and **Confirm merge** which means I am sending the updates to **Main** 

![Merge pull request](https://github.com/kky1/sql-queries-shared/blob/main/screenshots/ADS%20navigation10.JPG)

After merging to **Main**, you will have the option to **Delete branch**.

![Merge successful](https://github.com/kky1/sql-queries-shared/blob/main/screenshots/ADS%20navigation12.JPG)

## Helpful Resources

1. [Introduction to Using Git and GitHub](https://docs.microsoft.com/en-us/learn/modules/introduction-to-github/). Composed of 5 modules, the complete training is about an hour long. 
2. [How to Integrate Git to your GitHub online account](https://www.sqlshack.com/integrating-azure-data-studio-with-git-and-github/). This page provides step-by-step screenshots on the process, including how to create a respository and then link it to your Git in Azure Data Studio (or Visual Studio Code-same process) using GitHub.