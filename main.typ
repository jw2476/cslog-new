#set text(font: "JetBrains Mono", size: 10pt)

#outline(indent: 2em)

= Analysis

= Problem and Stakeholders
== Outline
My project is an application that helps with scheduling and productivity. You input tasks you need to do, as well as the time they take and the time they must be done by, and the app will make a schedule for you to follow. The schedule is adaptive, tasks can be added or changed at any time and the schedule will adapt. When adding tasks you can set them to repeat on certain days or every interval. To help with following the schedule, the app will send you notifications when you need to change tasks. If a task is taking longer to complete than you entered, you can defer the task for later or extend the task and the schedule will adapt to fit. You can also schedule very long tasks and they will be broken up into chunks and put into the schedule. The app is a website you have to log into the access the schedule, meaning the schedule can be accessed from anywhere on any device.

== Justification of a Computational Solution
Schedules have been made by hand for centuries, and a lot of tools and algorithms have been developed to aid in this such as Gantt charts and scheduling diagrams. The issue with making schedules by hand is that it takes a long time, a complex schedule can take up to an hour to create and they are very hard to optimise. This high time cost means that most people don't schedule their time, especially for personal tasks. It also makes schedules very rigid because if anything changes then the schedule has to be remade from scratch, this means that schedules that are made by hand are very bad at responding to change which is bound to happen at some point.

Essentially, scheduling is a number crunching task, you try every permutation of the list of tasks in order to find one that fufills all deadlines and criteria. For a low to medium amount of tasks, this approach is extremely fast on computers compared to making a schedule by hand, microseconds compared to hours. This means that computed schedules can be very quickly regenerated in response to changes in a user's plans.

As well as this a correct scheduling algorithm would make no mistakes, whereas schedules made by hand often have mistakes which are very hard to fix because of how much time they take to remake.

== Stakeholders
Due to the nature of the project, it could appeal to anyone who wants some help with staying on top of lots of different tasks, but my main target audience is students as they both have a lot of different tasks to keep track of, and also the most likely to adopt a digital schedule as the majority of them reguarly use computers throughout the day. To make the app useful for students, I need to make sure common tasks like school, revision, and homework are easy to add so they can set up their schedule quickly. A lot of these are repeating tasks so the app will need to handle those well. Also, the main device of most students is smartphones, so I'll need to make the website responsive and works well on mobile platforms, as well as making sure notifications work on iOS and Android. Adding tasks needs to be easy and fast otherwise people won't use the app. Finallly, the website needs to look aesthetic otherwise people won't use it.


== Research
In order to inform the design of my app, I researched existing solutions and conducted a survey and evalutated these to find features my stakeholders will find useful.
== Existing Solutions
==== Microsoft To Do
#table(columns: (auto, auto),
[#image("microsoft.png", height: 25%)],
[
- Easy to add tasks, just press the plus button and type in the task title, but trying to do anything else is very difficult, the repeat feature is hard to use and limited
- "My Day" view is useful as a form of basic schedule
- Tasks don't have a duration or an end time, and there's not a proper schedule so you have to manually schedule reminders
- Integrated well with Microsoft ecosystem, you can attach documents and link to emails
- No way to add large tasks that are split up
]
)
==== Google ToDo
#table(columns: (auto, auto),
[#image("google.png", height: 25%)],
[
- Easy to add basic tasks, similar to Microsoft To Do, but no way of repeating tasks automatically and difficult to add details
- No form of schedule, just a list of tasks
- Tasks don't have a duration or an end time so reminders can't be automated
- No way to add large tasks
]
)
==== Todoist
#table(columns: (auto, auto),
[#image("todoist.png", height: 25%)],
[
- Best looking UI out of the 3, lots of colour
- Very complicated, there are lots of different types of tasks and it wasn't explained 
- Easy to add tasks, just need a title, but many basic features like reminders and repeating are locked behind a paid version
- No form of schedule, just a list of tasks
- Tasks don't have a duration or an end time so reminders can't be automated
- No way to add large tasks 
]
)

== Summary of Existing Solutions
#table(columns: (auto, auto, auto, auto), [*App*], [*Feature*], [*Will I be adding it?*], [*Justification*],
  [Microsoft To Do and Google ToDo], [Easy to add tasks], [Yes], [The easier tasks are to add, the higher the chance that users will add them],
  [Microsoft To Do], [My Day view], [Yes], [Makes it easy to work out what needs to be done compared to a list of tasks],
  [Microsoft To Do], [Integration with other software], [No], [This feature is not feasible for the project (see limitations)],
  [Todoist], [Colourful UI], [Yes], [The good UI design made it very easy to understand the quite complicated task UI],
)

The main thing I noticed while researching existing solutions is that there aren't any major apps that provide a scheduling feature, they all stop at a list of tasks with optional reminders. Google ToDo can integrate with Google Calendar, but its not automated and manually scheduling tasks is long and complicated to do by hand. If my app had this feature it would set it apart from the competition. Also the ability to repeat tasks was missing from nearly all of the apps I tried, so this is definately something I need to implement.
== Survey
I created a survey and sent it out to some student peers, I got 8 repsonses in total with the following answers:
#image("q1.png", height: 30%)
#image("q2.png", height: 30%)
#image("q3.png", height: 30%)
#image("q4.png", height: 30%)
#image("q5.png", height: 30%)
#image("q6.png", height: 30%)
#image("q7.png", height: 30%)

My first takeaway from this survey is that only 1 person is currently using a todo/scheduling app, I spoke to some of the participants after they took the interview, and all of them explained how they'd like to use one, but felt that all the existing solutions were missing features or were poor fits for their lifestyle. This is really promising as it shows that there is a demand that hopefully this project will fill. Some of the participants also agreed to try out my app once it's completed and give feedback.

The participants slightly preferred a schedule over a list of tasks, although this was very split so I will need to implement both for my website. When I spoke to some of the participants after, most of them said that schedules took too long to make by hand, or that they were too inflexible, this would be fixed by automatically generating a schedule like I'm planning to do.

Most participants said that they'd be happy inputting a title, deadline and priority for each task, so these are inputs I can design the scheduling algorithm around. Just under half of the participants said they wouldn't want to enter a duration, when I spoke to them after the survey I found the main reason was because they find it hard to guess how long something will, this is a very important input for a scheduling algorithm, so I'll need to think of a way to address this.

All participants said they found reminder notifications useful, this will be one of my highest priority features. All candidates said that they would use the app on smartphones, so they should be my main platform, this was closely followed by PCs and laptops, so I will need to support those platforms too. I will not test for tablet support, but it might work out of the box depending on UI design. When asked for the most important platform for them, the majority of participants responded with smartphones, so this further highlights the importance of supporting smartphones.

Most participants said that a good looking UI was important for them, so I will need to make sure my UI is aesthetic.

== Summary of Survey
- There is a large demand for a feature-complete todo/scheduling app among students
- Most people would like to use automatic scheduling 
- Smartphones are the most important platform, followed by PCs/laptops
- Reminder notifications are one of the most important features
- UI needs to look good

== Features of the Proposed Solution
#table(columns: (auto, auto, auto, auto), [*Source*], [*Feature*], [*Priority*], [*Explanation*],
  [Own Idea], [Automatic Scheduling], [High], [This means that users don't need to keep deadlines and their todo list in their head to pick what tasks they need to do. Nearly all of the survey participants said they wanted this feature so I have made it high priority],
  [Research], [Todo List View], [High], [This allows users to easily view all of their tasks so they can be modified or deleted, nearly all similar apps had this feature so I've given it a high priority],
  [Stakeholder], [Repeated Tasks], [High], [Since my main stakeholder is students, who have lots of repeated tasks such as school and revision sessions, the app will need to handle repeated tasks well, so I've given it a high priority],
  [Research], [Reminder Notifications], [High], [Nearly all of the people who filled out the survey said reminder notifications were important to them, so I've given them a high priority],
  [Research], [Delaying tasks/ Take a break button], [Medium], [Many survey participants who I spoke to afterwards explained they would like a way of delaying tasks or taking a break for a length of time, this should be easy to add to the automatic scheduling system but not essential, so I've given it a medium priority],
  [Research], [API], [Low], [While speaking to survey participants, a few brought up making an API to get things like the current/upcoming task so they can use it in othe projects, I would to make this but it is not essential so I've given it a low priority],
  [Own Idea], [Schedule View], [Low], [Being able to view the entire schedule at once might be a nice feature, but its quite hard to make and since the schedule can completely change I'm not sure if it would be useful, so I've given it a low priority]
)

== Limitations
The first limitation is that the user must be connected to the internet in order to access their task list/ schedule, I may be able to get some sort of local caching working, but if another device makes a change the the schedule it will not be updated until the first device reconnects to the internet.

Another limitation is that you cannot attach documents to tasks like you can in other solutions, this is because it adds a lot of complexity and its not a feature I or any of my peers I spoke to would use. You will also not be able to share your schedule with others.

In addition, I am only planning on supporting smartphones, PCs and laptops, tablet support will not be tested as I don't have a tablet to test with. I also don't plan on adding any integrations with other services such as email apps or GitHub as this adds a lot of complexity to the project, however I may look at doing this if I take this project further.

Finally, there will be no way to get a data dump of your task list to backup or store locally, and there will be no way of accessing the history of your schedule as this would be very expensive to store on the server.

== Hardware and Software Requirements
=== PC/Laptop Minimum Requirements:
#table(columns: (auto, auto), 
[*Item*], [*Justification*], 
[Monitor], [Users will need to be able to see the visual output of the website in order to use it], 
[Keyboard], [The user will need to be able to type information about the tasks into the web app, this could be done with a mouse and on-screen keyboard], 
[Mouse], [A mouse will be needed to interact with the web app, to select tasks and press buttons], 
[Windows 10/11 or macOS 10.15 or a 64-bit Linux OS], [The user will need a supported operating system to run an internet browser to access the website. These are the supported operating systems for Chrome],
[SSE3 capable processor/ Intel Pentium 4 and up], [The user will need a supported CPU to run an internet browser. This is the requirement for Chrome],
[4GB of RAM or more], [The user will need enough memory to run a browser smoothly, this is taken from the Chrome requirements],
[~1GB of harddrive space], [The user will need to have a web browser installed which usually takes up ~1GB]
)
=== Mobile Minimum Requirements:
#table(columns: (auto, auto), 
[*Item*], [*Justification*], 
[Touchscreen], [Users will need to be able to see the website and interact with it through a touchscreen],
[Android 8.0+ or iOS 10.0+], [Minimum supported OSes for Chrome/Safari respectively],
[2GB of RAM or more], [This is listed as Chrome and Safari's minimum memory requirements, this is lower than on PCs likely because mobile browsers are more memory optimised],
[~1GB of hardrive space], [The user will need to have a web browser installed which usually takes up ~1GB]
)

== Success Criteria
=== Inputs
#table(columns: (auto, auto, auto), 
[*Criteria*], [*Explanation*], [*Measure*],
[The user should be able to add tasks with a title, deadline, duration, repeat scheduling and priority easily on both desktop and mobile platforms], [Users need to be able to add tasks as they think of them, else they might forget and it won't be added to their schedule. If adding tasks is complicated or takes too long then people just won't add them], [During evaluation, I will ask those who tested the app how easy they felt it was to add tasks],
[The user should be able to edit tasks and delete them], [Tasks can change as users realise they might take longer than estimate, or the deadline might move, or someone else might do the task for them, the app needs to facilitate this by letting users edit and delete tasks], [During evaluation, I will check if I implemented this feature, as well as asking testers whether they were aware of the feature],
[The user should be able to mark tasks as complete easily], [Tasks need to be easily marked as complete else users might forget which would mean the schedule will desync], [During evaluation, I will ask testers how easy they felt it was to mark a task as complete],
[The user should be able to take a break for any length of time, which will clear their schedule], [If users are taking a break, the app needs to not schedule any tasks for that time else the schedule will desync], [During evaluation, I will check I added this feature, as well as if testers found it worked and was useful]
)
=== Outputs
#table(columns: (auto, auto, auto), 
[*Criteria*], [*Explanation*], [*Measure*],
[The user should be able to see a list of tasks and their information easily], [The users will need to manage their tasks, this could include editting them, deleting them and more. This information needs to be nicely presented to the user], [During evaluation, I will ask for feedback on how tasks were presented to testers],
[The user should be able to quickly see their current task and upcoming tasks on their schedule], [Users could want to check what task they need to do, or prepare for upcoming ones], [During evaluation, I will ask testers on how the current and upcoming tasks were presented],
[The user should be sent reminder notifications when they need to start a new task], [As I found in my survey, users want to be reminded of their task when they need to start it, so they don't have to constantly check the app], [During evaluation, I will ask for feedback on how reliable and useful the reminder notification were],
[The website should be aesthetic and intuitive to use], [As I found in the survey, UIs that are both aesthetic and easy to use are quite important for most people], [I will ask testers about whether the UI was easy to use and whether it looked good on their devices] 
)
=== Processing
#table(columns: (auto, auto, auto), 
[*Criteria*], [*Explanation*], [*Measure*],
[When a user makes any change to their task list, it should be stored on the server], [Users might want to use the app on multiple devices, meaning tasks have to be synced across them. For this a user's task list must be stored in a database with APIs for getting and modifying the task list], [I will ask testers if they found task syncing and persistence to be reliable, or if they lost any task information between devices],
[A schedule should be generated for the users task list], [As I found by talking to people that took the survey, many people want a personal schedule to follow, but don't want to have to schedule it themselves because it takes too long and isn't flexible. By generating a schedule on-the-fly it becomes nearly instant and flexible as another schedule can be generated at any time], [I will ask testers how they found the generated schedule],
[When a user makes any change to their task list or decides to take a break, the schedule should be regenerated], [The schedule need to be synchronised with a user's task list, otherwise its not useful, so it must be regenerated on any change], [I will ask testers how reliable they felt the schedule regeneration was],
[Generated schedules should meet all deadlines and prioritise tasks correctly], [If a schedule doesn't fit the user's task list, then its not very useful], [I will check generated schedules against a user's task list when implementing the algorithm]
)

#pagebreak()

= Design
== Decomposition
=== Full Diagram
#image("decomp.png")
=== Frontend
#image("frontend.png")
This shows the different pages and operations I will need to implement on the frontend, I chose this as my  
=== Backend
#image("backend.png")
This shows the different API routes I will need to implement on the backend, these will be used by the frontend. I've left out the scheduling algorithm as I cover it properly below

#pagebreak()

== Interface Mock-Ups
=== Overview Page
#image("overview.png")
This page will be the first page the user sees after logging in to their account. It shows the current task if there is one, some upcoming tasks and some buttons used to complete/snooze the task, or go on a break. If a button is pressed, it will trigger an API call to edit the current task. It also has the navbar in the top left to navigate between this, the task list and the schedule view. All pages share this
=== Task List Page
#image("tasks.png")
This page is a grid-like view of a users tasks, it will be sorted by scheduled start time, but the sorting can be changed, by clicking on a task it will pop up the task editting UI. 
=== Schedule Page
#image("schedule.png")
This page shows the users schedule for the day, I chose to only make it the current day as the dynamic schedule will probably move tasks around quite a lot, and I don't want users to see a schedule that will likely change. By clicking on a task it opens up the task editting UI
=== Signup/Login Page
#image("login.png")
This page is what users will use to sign up for and log in to their account, from here the user will be redirected to the overview page. When the submit button is pressed the login/signup API route will be called.
=== Edit Task Popup
#image("edit.png")
This will pop up from the bottom of the screen whenever the user click on a task in any of the 3 main pages. To simplify input validation, I've chosed to use on dropdowns, native date and time pickers as much as possible. I'm not sure if the title editting by clicking on it will be obvious so I might change that design if its an issue

== Algorithms
=== Signup
On the frontend this algorithm needs to run some basic validation and then call the signup backend API with the inputted username and password. The server will then check the username if the username is free, if it is then it creates a new account, generates a login token and returns it to the frontend which will then save it, before going to the overview page.

```
function signup_frontend(username, password) {
  if username.is_empty() or password.is_empty() {
    return;
  }

  token = signup_backend(username, password);
  // Error handling
  save_login_token(token);
  goto("overview")
}

function signup_backend(username, password) {
  existing_users = get_users();
  if existing_users.contains(username) {
    return ERR_USERNAME_TAKEN;
  }

  user = add_user(username, password);
  token = generate_login_token(user);
  return token;
}
```

=== Login
On the frontend this algorithm needs to run some basic validation and then call the lgoin backend API with the inputted username and password. The server will then check the username and password are correct, if it is then it generates a login token and returns it to the frontend which will then save it, before going to the overview page.

```
function login_frontend(username, password) {
  if username.is_empty() or password.is_empty() {
    return;
  }

  token = login_backend(username, password);
  // Error handling
  save_login_token(token);
  goto("overview")
}

function login_backend(username, password) {
  user = get_user(username); // Get user with username from database, null if doesn't exist

  if user == null {
    return ERR_USER_DOES_NOT_EXIST;
  }

  if password != user.password { 
    return ERR_PASSWORD_INCORRECT;
  }

  token = generate_login_token(user);
  return token;
}
```

=== Get Tasks API
This algorithm is used by the frontend to fetch the list of tasks to display in the todo list view.
```
function get_tasks(token) {
  user = get_user_from_token(token);
  tasks = get_tasks().filter(task => task.owner == user);
  return tasks; 
}
```

=== Get Schedule API
This algorithm is used by the frontend to fetch the schedule to display the current and upcoming tasks in the overview page.

```
function get_schedule(token) {
  user = get_user_from_token(token);
  schedule = get_schedules().filter(schedule => schedule.owner == user)[0]; // A user will only have one schedule
  return schedule; 
}
```

=== Edit Task API
This algorithm edits a task stored in the database, the schedule must be regenerated to keep it up to date

```
function edit_task(token, oldTask, newTask) {
  user = get_user_from_token(token);
  if user != oldTask.owner { return ERR_UNAUTHORISED; }
  edit_task_query(oldTask, newTask);
  generate_schedule(user);
} 
```

=== Delete Task API
This algorithm deleted a task stored in the database, the schedule must be regenerated to keep it up to date

```
function delete_task(token, task) {
  user = get_user_from_token(token);
  if user != task.owner { return ERR_UNAUTHORISED; }
  delete_task_query(task);
  generate_schedule(user);
} 
```

=== Generate Schedule
This algorithm takes a list of tasks and returns a schedule with every task somewhere on it, this algorithm will be developed properly as I iterate on the implemented version, so for now I've picked a very simple algorithm which will be optimised in the future. All it currently does is sort the tasks by the deadline and then packs them into the schedule.

```
struct ScheduledTask {
  start: Time,
  end: Time,
  task: Task
}

type Schedule = Array<ScheduledTask>

function generate_schedule(tasks: Array<Task>, day_start: Time, day_end: Time) -> Schedule {
  sorted = tasks.sort(a, b => a.deadline - b.deadline);
  start = now();
  schedule = [];
  for task in sorted {
    if day_end < (start + task.duration) { // If the task would finish after the day's ended, move it to the beginning of the next day
      start = day_start;
    }

    schedule.push(ScheduledTask { start, end: start + task.duration, task }); // Add the task to the schedule
    start += task.duration; // Advance the start time by the task's duration
  }
  return schedule;
}
```

This algorithm has a lot of flaws, like it doesn't pack tasks a the end of a day and doesn't nessesarily meet all deadlines, but it will work the majority of the time, and I can improve it once the rest of the product is built.

=== Data Types 
```rust
struct User {
  username: String,
  password: String,
}

struct Task {
  title: String,
  duration: Duration,
  deadline: Time,
  owner: User
}

struct ScheduledTask {
  start: Time,
  end: Time,
  task: Task
}

struct Schedule {
  tasks: Array<ScheduledTask>,
  owner: User
}
```

=== Validation
Most validation has been included in algorithms planning, but I will need to ensure User references in the Schedule and Task struct are valid when I use them to ensure the program is robust.

== Testing
I will take an iterative approach to testing where after each feature is implemented I will run the associated tests to check its working, if it doesn't work then I'll fix it before moving on to the next iteration.
=== Login
#table(columns: (auto, auto, auto, auto),
[*No.*], [*Description*], [*Data*], [*Expected*],
[L1], [Log in with a correct username and password], [Valid], [Login succeeds and returns a auth token],
[L2], [Log in with a username that does not exist], [Invalid], [Error is raised and user is asked to sign up],
[L3], [Log in with a correct username and invalid password], [Invalid], [Error is raised and user is asked to recheck their password],
[L4], [Log in with either an empty username or password], [Invalid], [Error is raised and user is asked to fill username and password boxes],
[L5], [Goes to log in page while already logged in], [Boundary], [User is redirected to overview page]
)

=== Signup
#table(columns: (auto, auto, auto, auto),
[*No.*], [*Description*], [*Data*], [*Expected*],
[S1], [Sign up with an unused username and password], [Valid], [Sign up succeeds and returns a auth token],
[S2], [Sign up with a used username], [Invalid], [Error is raised and user is asked to choose a different username],
[S3], [Sign up with either an empty username or password], [Invalid], [Error is raised and user is asked to fill username and password boxes],
[S4], [Goes to sign up page while already logged in], [Valid], [User is redirected to overview page]
)

=== Overview
#table(columns: (auto, auto, auto, auto),
[*No.*], [*Description*], [*Data*], [*Expected*],
[O1], [Go to page while there is a current task], [Valid], [Page shows current task, remaining time, and other information],
[O2], [Go to page while there is not a current task], [Valid], [Page shows there is no task and shows the next upcoming task],
[O3], [Complete button pressed while there is a current task], [Valid], [Completes the task, regenerates schedule and updates page],
[O4], [Complete button pressed while there is no current task], [Invalid], [Errors saying there is no ongoing task],
[O5], [Snooze button pressed while there is a current task], [Valid], [Snoozes the task, regenerates the schedule and updates page],
[O6], [Snooze button pressed while there is no current task], [Invalid], [Errors saying there is no ongoing task],
[07], [Break button pressed], [Valid], [Pop up prompting for break duration],
[O8], [Duration entered into break popup], [Valid], [Clears all task for the entered duration, regenerates schedule and updates the page],
[O9], [Task list button pressed], [Valid], [Goes to task list page],
[O10], [Schedule list button pressed], [Valid], [Goes to schedule view page],
[O11], [Overview button pressed], [Valid], [Nothing happens],
[O12], [Any task pressed], [Valid], [Task edit UI appears]
)

=== Task List
#table(columns: (auto, auto, auto, auto),
[*No.*], [*Description*], [*Data*], [*Expected*],
[T1], [Go to page], [Valid], [See a list of all tasks],
[T2], [Click on any task], [Valid], [Opens task edit UI],
[T3], [Overview button pressed], [Valid], [Goes to overview page],
[T4], [Task list button pressed], [Valid], [Does nothing],
[T5], [Schedule button pressed], [Valid], [Goes the schedule view page]
)

=== Task Edit
#table(columns: (auto, auto, auto, auto),
[*No.*], [*Description*], [*Data*], [*Expected*],
[E1], [Delete button pressed], [Valid], [Task deleted and schedule regenerated],
[E2], [Title editted to a non-empty value], [Valid], [Task title changed],
[E3], [Title editted to an empty value], [Invalid], [Error message appears saying tasks must have a title],
[E4], [Deadline editted], [Valid], [Task deadline changed, schedule regenerated],
[E5], [Duration editted to a non-zero value], [Valid], [Task duration changed, schedule regenerated],
[E6], [Duration editted to a zero], [Invalid], [Error appears saying tasks must have a duration],
[E7], [Priority changed], [Valid], [Task priority changed, schedule regenerated]
)

=== Schedule Generation
#table(columns: (auto, auto, auto, auto),
[*No.*], [*Description*], [*Data*], [*Expected*],
[G1], [Schedule generated with valid list of tasks], [Valid], [All tasks are scheduled to be completed before their deadline],
[G2], [Schedule generated with valid list of tasks], [Valid], [All tasks are scheduled to take their duration],
[G3], [Schedule generated with impossible list of tasks], [Invalid], [Error raised about impossible task list],
[G4], [Schedule generated with valid list of tasks], [Valid], [Tasks with higher priorities are often schedules before tasks with lower priorities],
)

=== Schedule View
Will come up with these once I've decided more about the schedule view

= Implementation
== Tech Stack
When making web apps there is a massive choice in frameworks and libraries to help with making reactive websites in JavaScript, such as React, Vue, Svelte, SolidJS, and even new WebAssembly libaries like Leptos and Yew which are both written in Rust. I need my app to load anywhere, including places with slow internet so I need my bundle sizes to be as small as possible, so that means frameworks like React, Vue, Leptos and Yew won't be a good fit as they come with large library bloat. Whereas Svelte and SolidJS both compile away when building the website meaning the bundle will be kept small, and only contain the code I use. I've used Svelte in the past and I want to learn something new so I've chosen to use SolidJS for my frontend library. 

For the backend, I've also chosed SolidJS as I'm planning to use a fullstack framework based on SolidJS called SolidStart, this allows me to write the website frontend and the backend API in one codebase. 

== Authentication
Since most of the other features depend on authentication, for example the timetable needs an owner, I've chosen to start with it. Firstly, I designed a login and sign up page based on the UI mockups I created earlier:

TODO: SCREENSHOTS

The base HTML code for this is as follows, I've used some prebuilt components from a library called solid-ui and then modified them to my preference:
```html
<Card class="mx-auto my-16 max-w-[320px]">
  <CardHeader>
    <CardTitle>Sign Up</CardTitle>
  </CardHeader>
  <CardContent>
    <Label for="username">Username</Label>
    <Input onInput={(e) => set("username", e.target.value)} type="username" id="username" placeholder="Username" autocomplete="username" />
    <br />
    <Label for="password">Password</Label>
    <Input onInput={(e) => set("password", e.target.value)} type="password" id="password" placeholder="Password" autocomplete="new-password" />
    <br />
    <Label for="confirm">Confirm Password</Label>
    <Input onInput={(e) => set("confirm", e.target.value)} type="password" id="confirm" placeholder="Confirm Password" autocomplete="new-password" />
  </CardContent>
  <CardFooter>
    <Button onClick={() => signup()} class="w-full" type="submit">Sign Up</Button>
  </CardFooter>
</Card>
```

The form inputs are all placed into a card element then gives the border around the outside, I've also registered the event functions that update the fields in the JavaScript, as well as the button on click event handler.

Next I had to call the server API for signup when the button was pressed, which I used the following JS:
```javascript
const [fields, setFields] = createStore({ username: "", password: "", confirm: "" });

const signup = async () => {
  // Send POST request to signup with username and password
  const res = await fetch("/api/signup", {
    method: "POST",
    body: JSON.stringify({ username: fields.username, password: fields.password })
  });

  if (res.status === 409) { // Username conflict
    setTaken(true);
    return;
  }

  if (!res.ok) return; // Return if other failure

  showToast({ title: `Welcome ${fields.username}!`, description: "Going to overview..." }); // Pop up

  const token = await res.text();
  localStorage.setItem("token", token); // Save token for later
}

// Clear errors
const set = (field: "username" | "password" | "confirm", value: string) => { 
  setFields(field, value); 
};
```

This doesn't do any data validation at the moment, but I just want to get something working. The input data is stored in a SolidJS store, which will update any code that uses it when something changes. Next I moved onto the server-side to build up the api route:

For the database, I've decided to use MongoDB as its simple and I can host it online for free, to interface with it I've chosen to use a library called mongoose which allows me to create schemas and easily manage a connection. Before I started on the API route I needed to connect to the database:

```ts
import mongoose, { Schema } from "mongoose"
import dotenv from "dotenv"

//get variables from .env
dotenv.config()

//connect to local mongoose server
mongoose.connect(process.env.MONGO_URI)

mongoose.connection
.on("open", () => console.log("Connected to Mongoose"))
.on("error", (error) => console.log(error))

const userSchema = new Schema({
    username: String,
    password: String
})

export const User = mongoose.model("User", userSchema)
```

This loads a URI to connect to from my .env file, this means I don't have to hardcode the database URI which will help keep my database secret and allow me to quickly change it later. Once connected it logs a message to the console and creates a User schema which for now just has a username and a password.

Now I have a database to work with, I started to work on the API route:

```ts

const SALT_ROUNDS = 10;

export async function POST({ request }: APIEvent) {
    const { username, password } = await request.json();
    if (username == null || password == null) { 
        return new Response("Missing field", { status: 400 }); 
    }

    // TODO: Check username is free
    const existing = await User.findOne({ username });
    if (existing != null) {
        console.log(existing);
        return new Response("Username taken", { status: 409 });
    }

    const hashed = await bcrypt.hash(password, SALT_ROUNDS);

    const user = new User();
    user.username = username;
    user.password = hashed;
    await user.save();

    const token = jwt.sign({ username }, process.env.JWT_SECRET);

    return new Response(token);
}
```

This code gets the username and password out of the incoming request from the frontend, it also checks these both are present before continuing, else it responds with an error code. Then the route queries the database to check there aren't any users with the same username, if there are the route returns a 409 Conflict code and an error will be displayed on the website. Next the password is hashed using bcrypt to ensure no passwords will be leaked in the case of a data breach, this is more secure than standard encryption because hashing is a one way function its very hard to get the password back from the hashed form, even if you have the key used to hash it. This is not true for standard encryption algorithms, as if you have the key most encrypted data can be easily decrypted to get back the original passwords.

Next the user record is created and filled out using the username and the hashed password, and then saved to the database. Finally the username is encoded into a JSON Web Token, which is a nice why of encrypting some data into a token, with an encrypted secret that can be used to confirm the token was issued by the server. The JWT will be used to authenticate the user in other API routes.

=== Signup Testing
Now that the signup UI has been made and the API route was written, I decided to do a small test to check that the user account is created in the database and the JWT issued is valid.

#table(columns: (auto, auto, auto, auto, auto),
[*Test Id*], [*Test Title*], [*Expected*], [*Outcome*], [*Fix*],
[S1], [Sign up with an unused username and password], [Sign up succeeds and returns a auth token], [Record is created in database and token is issued], [],
[S2], [Sign up with a used username], [Error is raised and user is asked to choose a different username], [API route fails but no error is visibly raised], [Display error in UI],
[S3], [Sign up with either an empty username or password], [Error is raised and user is asked to fill username and password boxes], [API route fails but no error is visibly raised], [Display error in UI],
[S4], [Goes to sign up page while already logged in], [User is redirected to overview page], [N/A], []
)

The API route was working well but the UI was not raising any errors about empty fields or the username being taken, so I decided to add some red labels next to the fields to explain the issue.

```html
<Label for="username">Username</Label>
<Input onInput={(e) => set("username", e.target.value)} type="username" id="username" placeholder="Username" autocomplete="username" />
{empty.username ? <p class="text-red-500">Cannot be empty</p> : <></>}
{taken() ? <p class="text-red-500">Username taken</p> : <></>}
<br />
<Label for="password">Password</Label>
<Input onInput={(e) => set("password", e.target.value)} type="password" id="password" placeholder="Password" autocomplete="new-password" />
{empty.password ? <p class="text-red-500">Cannot be empty</p> : <></>}
<br />
<Label for="confirm">Confirm Password</Label>
<Input onInput={(e) => set("confirm", e.target.value)} type="password" id="confirm" placeholder="Confirm Password" autocomplete="new-password" />
{empty.confirm ? <p class="text-red-500">Cannot be empty</p> : <></>}
{mismatch() ? <p class="text-red-500">Passwords do not match</p> : <></>}
```

This UI toggles error labels if different values are set when processing the submit request. Next I needed to write the JS code to toggle the values depending on the issue with the users input:

```js
const [empty, setEmpty] = createStore({ username: false, password: false, confirm: false });
const [mismatch, setMismatch] = createSignal(false);
const [taken, setTaken] = createSignal(false);

...

    let error = false;
    
    // Username empty
    if (fields.username == "") {
      setEmpty("username", true);
      error = true;
    }

    // Password empty
    if (fields.password == "") {
      setEmpty("password", true);
      error = true;
    }

    // Confirm password empty
    if (fields.confirm == "") {
      setEmpty("confirm", true);
      error = true;
    }

    // Mismatch
    if (fields.password != fields.confirm) {
      setMismatch(true);
      error = true;
    }

    if (error) return;

    // Send POST request to signup with username and password
    const res = await fetch("/api/signup", {
      method: "POST",
      body: JSON.stringify({ username: fields.username, password: fields.password })
    });

    if (res.status === 409) { // Username conflict
      setTaken(true);
      return;
    }

    ...
```

This code raises errors if any of the fields are empty, or if the passwords don't match, or if the username is taken and shows a red label in the UI.

TODO: SCREENSHOTS

=== Signup Error Testing
#table(columns: (auto, auto, auto, auto, auto),
[*Test Id*], [*Test Title*], [*Expected*], [*Outcome*], [*Fix*],
[S1], [Sign up with an unused username and password], [Sign up succeeds and returns a auth token], [Record is created in database and token is issued], [],
[S2], [Sign up with a used username], [Error is raised and user is asked to choose a different username], [API route fails and error appears in UI], [],
[S3], [Sign up with either an empty username or password], [Error is raised and user is asked to fill username and password boxes], [API route fails and error appears in UI], [],
[S4], [Goes to sign up page while already logged in], [User is redirected to overview page], [N/A], []
)

With the sign in page success criteria fully met, except for S4 which depends on the overview page, I decided to move onto the login page

=== Login
Firstly I took the signup UI and duplicated it as I thought it would be easier to modify it into a login view:

```html
<Card class="mx-auto my-16 max-w-[320px]">
  <CardHeader>
    <CardTitle>Login</CardTitle>
  </CardHeader>
  <CardContent>
    <Label for="username">Username</Label>
    <Input onInput={(e) => set("username", e.target.value)} type="username" id="username" placeholder="Username" autocomplete="username" />
    {empty.username ? <p class="text-red-500">Cannot be empty</p> : <></>}
    {incorrect() ? <p class="text-red-500">Incorrect username or password</p> : <></>}
    <br />
    
    <Label for="password">Password</Label>
    <Input onInput={(e) => set("password", e.target.value)} type="password" id="password" placeholder="Password" autocomplete="new-password" />
    {empty.password ? <p class="text-red-500">Cannot be empty</p> : <></>}
    {incorrect() ? <p class="text-red-500">Incorrect username or password</p> : <></>}
  </CardContent>
  <CardFooter>
    <Button onClick={() => login()} class="w-full" type="submit">Login</Button>
  </CardFooter>
</Card>
```

This is very similar to the signup UI with the confirm password input removed and the error messages changed slightly, next I moved onto the verification login and sending the request to the server:

```js
const [empty, setEmpty] = createStore({ username: false, password: false });
const [fields, setFields] = createStore({ username: "", password: "" });
const [incorrect, setIncorrect] = createSignal(false);

const login = async () => {
  let error = false;

  if (fields.username == "") {
    setEmpty("username", true);
    error = true;
  }

  if (fields.password == "") {
    setEmpty("password", true);
    error = true;
  }

  if (error) return;

  const res = await fetch("/api/login", {
    method: "POST",
    body: JSON.stringify({ username: fields.username, password: fields.password })
  });

  if (res.status === 401) { 
    setIncorrect(true);
    return;
  }

  if (!res.ok) return;
  
  showToast({ title: `Welcome ${fields.username}!`, description: "Going to overview..." });
  const token = await res.text();
  localStorage.setItem("token", token);
}

const set = (field: "username" | "password", value: string) => { 
  setFields(field, value); 
  setEmpty(field, false); 
};
```

With the frontend page finished, I moved onto the API route. It needs to get the user record from the database using the username from the request, and then compare the hashed password with the password from the request. If the username and the password is correct, then a JWT is generated similar to the signup API and returned to the frontend:

```js
export async function POST({ request }: APIEvent) {
    const {username, password} = await request.json();

    const user = await User.findOne({username});
    if (!await bcrypt.compare(password, user.password)) {
        return new Response("Incorrect username or password", {status: 401})
    }

    const token = jwt.sign({username}, process.env.JWT_SECRET);
    return new Response(token)
}
```

With login route finished I decided to test it:

=== Login Testing
#table(columns: (auto, auto, auto, auto, auto),
[*Test Id*], [*Test Title*], [*Expected*], [*Outcome*], [*Fix*],
[L1], [Log in with a correct username and password], [Login succeeds and returns a auth token], [As expected], [],
[L2], [Log in with a username that does not exist], [Error is raised and user is asked to sign up], [As expected], [],
[L3], [Log in with a correct username and invalid password], [Error is raised and user is asked to recheck their password], [As expected], [],
[L4], [Log in with either an empty username or password], [Error is raised and user is asked to fill username and password boxes], [As expected], [],
[L5], [Goes to log in page while already logged in], [User is redirected to overview page], [N/A], []
)

All tests passed except for the one that requires the overview page, which is what I decided to work on next.