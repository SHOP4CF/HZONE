
<div align="center">

<a href="https://www.irt-jules-verne.fr/">
  <img src="images/IRT_LOGO_RVB-BLANC.png" alt="LogoIRT" width="300">
  <br />
  </a>

  <a href="https://www.irt-jules-verne.fr/">
  <img src="images/LogoHzone.png" alt="Logo" width="200" height="70">
  </a>

<h3 align="center">Shop4CF <br /> H-Zone component</h3>

  <p align="center">
    Scheduling Tasks with Zone Occupation
    <br />
    <a href="https://github.com/othneildrew/Best-README-Template"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="images/FlexSim Shop4cf 2.mp4">View Demo</a>
    ·
    <a href="https://github.com/othneildrew/Best-README-Template/issues">Report Bug</a>
    ·
    <a href="https://github.com/othneildrew/Best-README-Template/issues">Request Feature</a>
  </p>
</div>

# Table of contents
1. [About this Component](#about-this-component)
   * [In a Nutshell..](#nutshell)
   * [Abstract](#abstract)
   * [Potential Use Cases](#usecases)
   * [Human Factors](#humanfactors)
   * [Impact](#impact)
   * [Built with](#builtwith)
2. [Getting Started](#gettingstarted)
   * [Prerequisites](#prerequisites)
   * [Installation](#installation)
   * [Utilisation Steps](#utilisationsteps)
     * [Specification of InputData](#specificationofinputdata)
       * [Sheet:"Tasks"](#sheettasks)
       * [Sheet:"Workers"](#sheetworkers)
       * [Sheet:"Resources"](#sheetresources)
       * [Sheet:"Layout"](#sheetlayout)
     * [Setting up the scheduler (Sheet:"Parameters")](#settingupthescheduler)
       * [Methods](#methods)
       * [Priority Rules](#pr)
       * [Worker and Resource Selector Rules](#selectorrules)
       * [Accessibility Methods](#accesibility-method)
       * [Scheduler Results](#schedulerResults)
     * [Opening the simulation model](#opensimulation)
     * [Setting up a simulation](#setupsimulation)
     * [Input data into model](#inputdataintomodel)
     * [Running a simulation](#runningsimulation)
     * [Reading simulation results](#readsimulationresults)
3. [Methods explained](#methodsexplained)
   * [Method 1:Parallel Schedule Scheme](#pss-explained)
   * [Method 2:TreeNode Search](#tns-explained)
   * [Method 3:DFS with features of Evolutionary Algorithms](#dfs-ft-EA-explained)
4. [Contributing](#contributing)
5. [License](#license)
6. [Contact](#contact)

-------------
# About this Component <a name="about-this-component"></a>

## In a Nutshell .. <a name="nutshell"></a>

* **Need :**  
  * Increase efficiency of operations in shared working areas (same zone inside huge parts or same machines in a factory).

* **Answer :**  
  * Schedule worker activities considering zone occupation and accessibility constraints. 

* **Impact :** 
  * Safe and comfortable close co-activity among workers
  * Improved efficiency, reduced waiting time, reduce equipment needs

* **Potential Users:**
  * Industries producing large products (Aero-spatial, Naval, Construction,etc.)
  * SMEs.

## Abstract <a name="abstract"></a>
This component aims to aid shop-floor managers while scheduling tasks that impose zone occupation constraints
in the shop floor (or large product). The component is composed of two complementary parts: a  **Scheduler** and a **Simulation model**.

The scheduler will search for a sequence of tasks that minimises the total make-span of the project all while taking 
into account zone occupation requirements, the accessibility of the zone, task precedence conditions, needed worker 
skills and needed resource types. The scheduler will allocate workers and resource instances to tasks with an effort 
to balance workload among workers. The schedule produced can then be tested and validated using the Flexsim simulation model, providing more insights
and additional performance indicators such as traveled distance and the impact this might have in the global make-span. 

In order to easily create application specific simulation models a template model is provided with the appropriate
interphases to read input information and produce results on a ready to use dashboard of KPIs:  total makespan,
number of conflicts, total blocked time, (time an operation was blocked by other operation due to zone occupation
or accessibility), list of conflicts, operator Gantts.

This component represents a decision support system to shop floor managers, helping them to improve production 
efficiency as well as working conditions (including safety) for operators though a smoother coordination of tasks.

<p align="center">
    <img src="images\Component.png" alt="shema1" />
</p>


## Potential Use Cases <a name="usecases"></a>

This component is particularly useful in industries producing very large products. 
In those cases, the ability to do a job and the security of the worker is dependent on the definition and 
respect of the workspace around the task. The aeronautical industry is a great example.
Workers execute jobs in restricted zones and in parallel with other jobs by other workers. 
Very frequently, workers  might encounter zone conflicts with other tasks causing waiting time or dangerous co-activity.
E.g. two workers working in opposite sides of an airplane wall one might execute a drilling operation that 
might endanger the worker in the opposite side.With this component the person responsible for the operators' 
schedule will be able to produce schedules that guarantee workers co-activity all while trying to minimise 
the overall make-span and balance workload. 

With this component the person responsible for the operator’s schedule will be able to validate the sequence
of operations for each worker with the guarantee they will not block another colleague or at list be advised
of the critical moment. This situation can also be translated to other large scale manufacturing contexts, 
like shipbuilding industry as well as to some SMEs manufacturing context.

## Human Factors <a name="humanfactors"></a>
* <ins>Main relevant human-related issue to be solved or improved:</ins>
  * Occupation and accessibility constraints in tight areas 
  * Dangerous and non-comfortable close co-activity. 
* <ins>What kind of human-technology interaction does the use-case introduce?</ins>
  * Task description in a standardized form 
  * Graphical presentation of simulations and performance indicators
* <ins>Which are the most relevant workers or workers groups that are affected by the use-case implementation?</ins>
  * Operators working in shopfloors where space is tight and operations with various specifics zone occupations
     could block the access to other zones/machines or mutually interfere in task executions 
  * Shop floor managers in charge of planning and scheduling work orders.
* <ins>How will the component affect workers jobs? </ins>
  * Better coordination among workers 
  * Safer working conditions by avoiding risk zones. 
  
## Impact :<a name="impact"></a>
The component will help improve planning efficiency by reducing the waiting time of operators to access 
their working zones and will improve work safety by setting temporal risk zones around operations that are in execution.

## Built With <a name="builtwith"></a>

The Scheduler was programmed in JAVA using the [IntelliJ IDE](https://www.jetbrains.com/idea/) 
and the following Java libraries:
* [Google Guava](https://github.com/google/guava)
* [JGraphT](https://jgrapht.org/)
* [Apache POI][Apache-url]

<p align="center">
  <img src="images\Guava.jpeg" alt="guava"  width="100"/> 
<img src="images\jgrapht.png" alt="jgrapht"  width="100"/>
  <img src="images\apache.png" alt="apache"  width="100"/>
</p>

The simulator template was developed using [Flexsim simulation](https://www.flexsim.com/) software (release 22.2.3.)
<p align="center">
 <img src="images\Flexsim_noire.png" alt="flexsim"  width="200"/>
</p>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

--------------
# Getting Started <a name="getttingstarted"></a>

<span style="color: yellow;">
 TODO --> instructions for Docker? etc?
</span>

## Prerequisites <a name="prerequisites"></a>
* Java Virtual Machine
* Windows 10 or higher *(might work with older releases)*
* Microsoft Excel (.xlsx)
* Flexsim 22.2.3. or higher *(might work with older releases)*

## Installation <a name="installation"></a>

<span style="color: yellow;">
TODO --> à completer
</span>.

1. Download and install a JAVA Virtual Machine from Oracle website:  https://www.java.com/download/
2. Install Microsoft Excel
3. Download and install the free version of Flexsim Simulator available @ https://www.flexsim.com/
<font size="2">
<em>The free version of Flexsim is sufficient to run the models provided by this component.
The template limited to  TODO #of Tasks, # of obstacles,etc </em>
</font>

## Utilization Steps:    <a name="utilisationsteps"></a>

1. Enter problem data in the input file: `InputData_Scheduler.xlsx`

    | Sheet           | Data                                     |
    |-----------------|------------------------------------------|
    | "Parameters" | Specification of Scheduler parameters       |
    | "Tasks"      | Specification of Task information           |
    | "Workers"    | Specification of Worker Skills.             |
    | "Resources"  | Specification of Resourcs with their types. |
    | "Layout"     | Specification of Shop-floor layout in 2D    |

2. Run Scheduler using console:
   <span style="color: yellow;">
   TODO --> include docker details
   </span>
    ```sh
    java -jar HZones.jar "<FilePath to InputData File>"
   ```
      <font size="2">
      <em>E.g. java -jar HZones.jar "C:\Documents\HZones\data\InputData_Scheduler.xlsx"</em>
      </font>
3. Read scheduler output in console.
4. Experiment trying different scheduler parameters. Keep the best solution.
5. Recover the output file produced by the scheduler @ the filepath specified in Sheet:"Parameters". 
6. Open Flexsim template model `HZone_template_model`.
7. Set up the model
8. Input data into the simulation model
9. Run the simulation
10. Read simulation results (KPIs)

### Specification of Input Data <a name="specificationofinputdata"></a>

#### Sheet: "Tasks"    <a name="sheettasks"></a>

| Field           | Description                                                                                                                                                                                       |
|-----------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `Task_ID`       | Identifier of the Task                                                                                                                                                                            |
| `Ref`           | Reference number of the Task                                                                                                                                                                      |
| `Description`   | Text description of the task. Useful for workers. <br/>This field is considered when comparing two task instances                                                                                 |
| `Duration`      | Time necessary to execute the task in seconds.                                                                                                                                                    |
| `Worker Skills` | Type of skill the worker needs to execute this task.<br/>For the moment this is limited to only one skill per task.<br/>This should be coherent with the worker specification in Sheet:"Workers". |
| `Resources`     | Types of resources needed for this task.<br/>Multiple resources can be specified using " ; ".                                                                                                     |
| `Predecessors`  | Indicate the `Task_ID` of the tasks that need to be executed before this. <br/>This should be specified as a hard precondition and not as a preference.                                           |
| `Zone(x)`       | X coordinate of the reference point of the zone. (center?)                                                                                                                                        |
| `Zone(y)`       | Y coordinate of the reference point of the zone. (center?)                                                                                                                                        |
| `x+`            | Relative x coordinate of one side of the zone with respect to `Zone(x)` coordinate.                                                                                                               |
| `x-`            | idem in the opposite direction.                                                                                                                                                                   |
| `y+`            | Relative y coordinate of one side of the zone with respect to `Zone(y)` coordinate.                                                                                                               |
| `y-`            | idem in the opposite direction.                                                                                                                                                                   |

#### Sheet: "Workers" <a name="sheetworkers"></a>


| Field              | Description                                                                 |
|--------------------|-----------------------------------------------------------------------------|
| `Worker Id`        | Identifier of the worker                                                    |
| `Skills`           | Skills the worker posses.<br/>Multiple skills can be specified using " ; ". |
| `WorkLoad`         | Empty:  <em> will be filled with the output                                 |
| `IdleTime`         | Empty:  <em> will be filled with the output                                 |
| `Utilization Rate` | Empty:  <em> will be filled with the output                                 |

#### Sheet: "Resources" <a name="sheetresources"></a>

| Field              | Description                                                                                 |
|--------------------|---------------------------------------------------------------------------------------------|
| `Resource Id`      | Identifier of the resource instance.                                                        |
| `Type`             | Identifier of the type of resource. <br/>Several resource instances can be of the same type |
| `WorkLoad`         | Empty:  <em> will be filled with the output                                                 |
| `IdleTime`         | Empty:  <em> will be filled with the output                                                 |
| `Utilization Rate` | Empty:  <em> will be filled with the output                                                 |

#### Sheet: "Layout" <a name="sheetlayout"></a>

This sheet is defined differently then the others.  The rows 3 and 4 are used to specify the dimensions of the Layout and the dimensions of the Worker aura within the layout.
From row 5 and on, each row is an entry of an "obstacle" in the layout with its coordinates and dimensions.
By "obstacle" we refer to any physical element occupying a space inside the layout that is fixed and that cannot be traversed by a worker.
e.g. Machine, wall, etc.
Multiple "obstacles" can be declared.

| Field        | Description                                                                         |
|--------------|-------------------------------------------------------------------------------------|
| `EntityName` | Identifier of "obstacle".                                                           |
| `X`          | X coordinate of the reference point of the zone (center?).                          |
| `Y`          | Y coordinate of the reference point of the zone (center?).                          |
| `x+`         | Relative x coordinate of one side of the zone with respect to `Zone(x)` coordinate. |
| `x-`         | idem  but in the opposite direction.                                                |
| `y+`         | Relative y coordinate of one side of the zone with respect to `Zone(y)` coordinate. |
| `y-`         | idem but in the opposite direction.                                                 |      


### Setting up the Scheduler ("Parameters" Sheet) <a name="settingupthescheduler"></a>

The Scheduler of this component offers several methods to search for a scheduling solution as well as some parameters so
that users can tune the scheduling method that best fits to the nature of their application. Indeed, there is no single 
method that is best for all use cases. This is a feature this component, to provide a scheduling tool that user can adapt
to the nature and needs of their application and make experimentation to fine tune the right set of parameters. 

| Field                    | Description                                                                                                                                                                                                                 |
|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `OutputFile`             | Name of the output file on which the schedule will be written.<br/> The folder will be created in the "data" folder which should be in the same folder as the executable. <span style="color: yellow;">FIXME docker </span> |
| `Method`                 | Scheduling algorithm that will be used to solve the problem.                                                                                                                                                                |
| `Priority Rule`          | Priority Rule with which the scheduling algorithm will base its search. (heuristic)                                                                                                                                         |
| `Worker Selector Rule`   | Selector rule with which the algorithm will allocate workers to tasks when searching for a solution.                                                                                                                        |
| `Resource Selector Rule` | idem as worker selector rule.                                                                                                                                                                                               |
| `Accessibility Method`   | Algorithm used to find a path in the shop-floor between two zones.                                                                                                                                                          |
| `Time Limit`             | This parameter is only used for the `DFS_ft_EA_Method`. It is the time allowed for the algorithm to search for better solutions.                                                                                            |      

Examples of parameter combinations:
 * >Example1: [ Method: `ParallelScheduleScheme_Method`/ Priority Rule:`SPT`/ 
Worker Selector Rule: `LeastWorkLoad`/ Resource Selector Rule:`LeastWorkLoad` /
 Accessibility Method: `A_Star`]
 
    <em>This combination will use the parallel scheduling scheme using the "Shortest Processing Time" priority rule as heuristic.
Workers and resources will be allocated to tasks according to their workload and the layout map wil be explored using the A_Star algorithm.
</em>

* >Example2: [ Method: `ParallelScheduleScheme_Method`/ Priority Rule:`ALL`/
  Worker Selector Rule: `LeastWorkLoad`/ Resource Selector Rule:`LeastWorkLoad` /
  Accessibility Method: `A_Star`]

    <em>This combination will also use the parallel scheduling scheme but will use all the priority rules and return the 
solution with shortest make-span and indicate the priority rule that produced it.</em>
  <br /><br />
* >Example3: [ Method: `DFS_ft_EA_Method`/ Priority Rule: /
    Worker Selector Rule: `LeastWorkLoad`/ Resource Selector Rule:`LeastWorkLoad` /
    Accessibility Method: `A_Star`]

    <em>This combination will use a Depth First Search algorithm with features of Evolutionary algorithms, 
the user could choose a priority rule to apply, if left empty the algorithm will use the `SPT` rule. 
</em>

#### Methods: <a name="methods"></a>

| Priority Rule                   | Description                                                                                                                                                                                                                                            |
|---------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `ParallelScheduleScheme_Method` | Implements the Parallel Scheduling Scheme to construct a solution using a priority rule as heuristic.                                                                                                                                                  |
| `DFS_ft_EA_Method`              | Implements a Depth First Search algorithm to construct initial solutions and will consecrate the remaining allowed time to search for improvements to this solutions                                                                                   |
| `TreeNodeSearch_Method`         | Implements the Depth First Search algorithm to search for all the possible solutions exploring the couple: Task + Worker <br /> However this method is not recommended as it easily become unsolvable due to combinatorial complexity of the problem.  |

<span style="color: yellow;">FIXME  TreeNode --> remove?  </span>

#### Priority Rules <a name="pr"></a>
Users have the choice of several priority rules. These rules are based the following sources of information:
* **Activity information:** information about time or cost estimates of the activities determines the activity priorities. 
* **Network information:** information on the project network logic determines the activity priorities.
* **Resource information:** information about the project resources determines the activity priorities.

Here is the list of Priority Rules implemented:

| Priority Rule | Description                                                                                                                                        |
|---------------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| `SPT`         | Shortest Processing Time                                                                                                                           |
| `LPT`         | Longest Processing Time                                                                                                                            |
| `MIS`         | Most Immediate Successors.<br /> *Put the activities with the most direct successors first.*                                                       |
| `MTS`         | Most Total Successors. <br /> *Put  the activities with the most direct and indirect successors first.*                                            |
| `GRPW`        | Greatest Rank Position Weight<br /> *The GRPW is computed as the sum of the duration of the activity and the duration of its immediate successors* |
| `GRWC`        | Greatest Resource Work Content<br /> *WorkContent= Duration x (Num of Resources)*                                                                  |
| `GCRWC`       | Greatest Cumulative Resource Work Content<br /> *Work content of the activity plus the sum of the  work content of all immediate successors        | 

#### Worker and Resource Selector Rules <a name="selectorrules"></a>
The selector rule is the second criteria of the heuristic of the methods implemented in this component.
The worker selector rule has a direct impact in the solution as the actions in the exploration  are defined be the couple:
*Task + Assigned Worker*

| Selector Rule   | Description                                                        |
|-----------------|--------------------------------------------------------------------|
| `AnyInList`     | Random selection                                                   |
| `LeastWorkLoad` | Selection of the Worker( or Resource) with less workload scheduled |

We recommend using the `LeastWorkLoad` selector rule for workers as it will have the effect of balancing work. 

The resource selector rule has a more indirect impact. The algorithms implemented do not consider exploring resource allocation as 
it will contribute to the combinatorial complexity. This is valid in scenarios where resources (tools) are not considered critical resources.   


### Accessibility Methods <a name="accesibility-method"></a>
Several options are available for exploring the layout map when checking if a solution satisfies accessibility constraints.
In most solutions A_Star is a good choice finding solutions fast in complex mazes.

| Selector Rule          | Description                                                                          |
|------------------------|--------------------------------------------------------------------------------------|
| `BFS`                  | Breath First Search                                                                  |
| `DFS`                  | Depth First Search                                                                   |
| `RandomWalk`           | Randomly Explore the 2D Map                                                          |
| `A_Star`               | Finds the shortest path using the *"Manhattan distance"* adapted for diagonal moves. |
| `Bidirectional_A_Star` | Explores the map forwards from the source and backwards from the goal.               |

Even though, in theory, the Bidirectional_A_Star algorithm should be faster than the A_Star to find a feasible path.
We do not recommend using this as it has shown slower results than A_Star. This is due to the JGraphT implementation 
that searches not for a feasible path ( which is sufficient for this application) but for the shortest path which 
requires more effort than with A_Star. 

### Scheduler Results <a name="schedulerResults"></a>
 
Two outputs are issued from the scheduler: 
* Console display
* Excel output file at the address indicated in the `Parameters` sheet in the input data file. 

Here is an example of results displayed in the console.

<p align="center">
 <img src="images\1_stp_wl_console.png" alt="stpwlconsole"/>
</p>

When launched, the scheduler will execute tests on the input data to check for coherence.  
The tests performed are:
* Test that the pool of resources satisfies the resource type requirements of tasks.
* Test that the team of workers satisfies all skill requirements of tasks.
* Test on precedence inconsistencies such as:
  * At least one task without dependencies
  * Test that there are no precedence loops among tasks

The results of this tests can be seen in the upper part of the console display. 
Then we can see  the time the algorithm took to construct the schedule.
Finally, a quick view of the found schedule is printed. here we can find:
* the number of tasks in the schedule
* the number of resources used by th schedule
* the schedule start date
* the schedule finish date
* KPI information { MakeSpan,  Workload, IdleTime,  global utilization rate of workers}
* the resulting worker schedules.

####  Results Examples

Here is a comparison of test runs using different parameter combinations for the sample data provided in the "InputData_Scheduler.xlsx" file.

| Parameters                                       | Results                                                                                                                                         |
|--------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| ![stp-any-params](images\1_stp_any_params.png)   | Makespan: 2549 sec / Utilisation Rate: 0.35223 / num of resources: 22 / number of workers: 7                                                    |
| ![stp-wl-params](images\1_stp_wl_params.png)     | Makespan: 2549 sec / Utilisation Rate: 0.35223 / num of resources: 25 / number of workers: 7                                                    |
| ![mis-any-params](images\1_mis_any_params.png)   | Makespan: 2500 sec / Utilisation Rate: 0.35914 / num of resources: 22 / number of workers: 7                                                    |
| ![mis-wl-params](images\1_mis_wl_params.png)     | Makespan: 2500 sec / Utilisation Rate: 0.35914 / num of resources: 25 / number of workers: 6                                                    |
| ![all-any-params](images\1_all_any_params.png)   | Makespan: 2489 sec / Utilisation Rate: 0.36073 / num of resources: 22 / number of workers: 7 <br/> Best solution found with priority rule: GRPW |
| ![all-wl-params](images\1_all_wl_params.png)     | Makespan: 2489 sec / Utilisation Rate: 0.36073 / num of resources: 25 / number of workers: 7 <br/> Best solution found with priority rule: GRPW |
| ![3-mis_wl-params](images\3_mis_wl_params.png)   | Makespan: 2347 sec / Utilisation Rate: 0.38255 / num of resources: 25 / number of workers: 7                                                    |
| ![3-stp_wl-params](images\3_stp_wl_params.png)   | Makespan: 2335 sec / Utilisation Rate: 0.38452 / num of resources: 25 / number of workers: 7                                                    |

From these results is can bee seen that the best result given with the Parallel Scheduling Scheme method was given by the GRPW priority rule. 
We can also observe how the DFS_ft_EA method 3 succeeds in improving the schedule result.
In fact, in this case, it succeeded in finding the optimal result as 2335 seconds is the duration of the critical task sequence.

Looking at the results produced by the MIS priority rule we can observe the effect of the worker selector rule on the schedule. 
Even though both runs produced equivalent solutions in terms of make-span, the second run shows clearly how work in not 
well-balanced among workers.Another observation that can be made is that the second run does not need worker 4 and makes use of only 22 resources instead of 25.

| Random Selection                               | Least Workload Selection Rule                 |
|------------------------------------------------|-----------------------------------------------|
| ![stp-any-params](images\1_mis_any_params.png) | ![stp-wl-params](images\1_mis_wl_params.png)  |
| ![mis-wl-params](images\1_mis_any_console.png) | ![mis-wl-params](images\1_mis_wl_console.png) |


### Opening the simulation model <a name="opensimulation"></a>
First of all open the model template (*HZone_template_model*)  
You should see de 3D view of the model as this :

<p align="center">
 <img src="images\ModelView.png" alt="ModelView"  width="600"/>
</p>

You can see :  
- 10 operators: they have been created and pre-programed. They are the team which will operate the tasks you will ask them.
- The purple frame is the border of the zone where the operators will move.

### Setting up a simulation <a name="setupsimulation"></a>

Le model uses data from the scheduler Excel doc output. The data is stored in different tables in the model. You have to copy data from the Excel to the model. To help you navigating in the model a dashboard have been created. If it doesn't pop up at model opening you can access it form the dashboard menu of Flexsim :

<p align="center">
 <img src="images\DashboardSetup.png" alt="DashboardSetup" />
</p>
<p align="center">
 <img src="images\DashboardSetup2.png" alt="DashboardSetup2"/>
</p>

The dashboard have 5 options and 1 editable text field:

- **Layout Description :** correspond to the `Layout` sheet of the scheduler output. 
This section describe the working environment (size, obstacles).
- **Tasks Description :** correspond ton the `Task Plan` sheet of the scheduler output. 
You find here the description of all the tasks the operator will execute.
- **Workers Description :** if you want to give specific names to the operators you juste have to fill this table up.
- **Model View :** quick access to the 3D view of the model.
- **Clear Tables :** it will reset all data if you want to use the model with a different set of data (if your new data
contain fewer lines some old data could remain).
- **Set Size :** in this filed you have to enter the step you choose in your data. By default, the model is set in meter.
*If you want a smaller grid 50cm for example enter 0.5. Be careful to use this size in your data (a 1m x 1m zone will be
declared as a 2 x 2 zone).*

| ![22-44-1](images\22-44-1.png)     | ![22-44-05](images\22-44-05.png)     | ![44-88-05](images\44-88-05.png)     |
|------------------------------------| ------------------------------------ | ------------------------------------ |
| *a 22 by 44 grid with a step of 1* | *a 22 by 44 grid with a step of 0.5* | *a 44 by 88 grid with a step of 0.5* |


### Input data into model <a name="inputdataintomodel"></a>

You just have to copy and paste the data from the Excel sheet to the Flexsim table (same names in Excel sheet and Flexsim table).
Just be sure to only select the data and not the headers and to paste it in the first cell of the first row of the table.

![DataImport](images\DataImport.png)

Once the Tasks and Layout data is imported, the model is ready to go.

### Running a simulation <a name="runningsimulation"></a>

To run the model click on the play button :
<p align="center">
 <img src="images\Run.png" alt="Run"/>
</p>

When you click on it the model will construct the layout and send you a confirmation.  
Click `OK`, now you can see the environment you described to the scheduler.

![Run1](images\Run1.png)
<span style="color: yellow;">
  FIXME --> the image is not clean..
</span>.

Click another time on Run and the model will start.
<p align="center">
 <img src="images\Run2.png" alt="Run2" width="600" />
</p>

You can adjust the simulation speed with the scrollbar.

<p align="center">
 <img src="images\Speed.png" alt="Speed"/>
</p>

The number displayed is the number of seconds which the simulation progress each second in real time.  
*NOTE : if you have changed the operator's names the first time, you have to run the model once and the reset 
and restart to see the change.*
<span style="color: yellow;">
FIXME --> Rewrite sentence..
</span>.

### Reading simulation results <a name="readsimulationresults"></a>

Once all the tasks have been executed the model will stop by itself.  
You can access results in a dashboard :

![KPI](images\KPI.png)

In this dashboard you can consult different indicators :

![KPI2](images\KPI2.png)


**The state indicator :** it shows the proportion of the different states of the operators. Flying over your mous will display the the percentage for heach part of the graph. The different states are :

- Idle : This represents the waiting time when the operator have no remaining task. This is available time for operators.
- Busy : This is the portion of the simulation time when the operator was executing his work.
- Blocked : This part is the time during the operator could do a task but the zone where he was supposed to work is occupied or inaccessible. *During this time operator is not considered available because he has to be ready at the moment his zone will be released.*
- Travel empty : This is the travelling time to go to the different tasks' location.
- Allocated idle : This portion represent the waiting time of the operators where they have remaining tasks but the predecessors conditions are not fullfilled. *During this time the operator is waiting to work. As when he his blocked he has to be ready to work when the conditions will be fullfilled.*

**Travel Distance :** with this indicator you can check if the travel distance is well-balanced between operators.

**The Gantt Chart :** you can visualize the tasks sequence during simulation time.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---------------------
# Methods explained <a name="methodsexplained"></a>
<span style="color: yellow;">
  TODO 
</span>.

## Scheduling problem
This component is intended to solve the *Resource Constraint Scheduling Project Scheduling Problem* (RCPSP) with 
additional constraints on zone occupation and accessibility. The RCPSP considers resources of limited availability and 
tasks with known durations and linked by precedence conditions.  To this problem with add the consideration of constraints
related to zone occupation and the accessibility of the zone given the zone occupation at the start time of each task. 
The problem consists then in finding a schedule of minimal make-span by assigning workers  and resources to tasks as well
as a start time to each task such that all precedence constraints are respected and there are no conflicts in zone occupation. 

This problem is NP-hard and can easily produce a large combinatorial complexity.  For example, a problem with 15 tasks 
and 3 workers solution space could reach up to: (num of Tasks)!*(num of workers) = 15!*3= 3,923 billion possibilities. 

## Method 1 : Parallel Schedule Scheme <a name="pss-explained"></a>
This method uses a parallel schedule generation scheme, this method will increment in an iterative manner a time 
window and will add tasks to the schedule that are eligible based on the satisfaction of their constraints.

Take for example the following project schedule and precedence graph fo a project where the resource pool is limited to 5. 
For example at time t=8, tasks 1 and 2 are already scheduled. Due to precedence constraints, at this point tasks 3,4 and 5 are
eligible to be scheduled. Using a SPT priority rule, the algorithm will first add task 4 then 5 and task 3 will no longer be eligible due to resource conflicts
As no other task is eligible at time t=8 the algorithm increments the time window to t=12, that is the soonest event in the 
schedule, where tasks 3 and 7 become eligible.

<p align="center"> <img src="images\precedencegraph.png" alt="precedencegraph" width="400"/>
<br/>Example:Task Precedence Graph
</p>

<p align="center"> <img src="images\parallelscheme.png" alt="parallelscheme"/>
<br />Example: Project Schedule using the parallel schedule generation scheme with priority rules.
</p>

The algorithm implemented in this component uses the same mechanism. The following figure illustrates its logic.  

<p align="center"> <img src="images\ps_flowchart.jpg" alt="ps_flowchart" height="700"/>
<br /> Algorithm: Parallel Schedule Scheme Method.
</p>

This method is a good option when the user wants quickly a feasible solution to large and complex problems.
Due to this, it is specially suitable for rescheduling when fast response times are needed. 
Most of the time, and for most problems,  this method will provide satisfying solutions, however it does not make any effort to
try to improve the solutions. Indeed, there might be much better solutions to the problem in the solution space. 

## Method 2 : TreeNode Search <a name="tns-explained"></a>
This method implements the Depth First Search algorithm to produce a Tree Node of all possible actions. 
Even though this algorithm is implemented, it is not recommended as in most cases it will fail to conclude due to the large
combinatorial complexity of the problem. The algorithm will exhaustively search for solutions around the neighborhood 
of the initial solution found with priority and selection rules, which be a local minima. 
To solve this problem, method 3 was designed. 

## Method 3 : DFS with features of Evolutionary Algorithms <a name="dfs-ft-EA-explained"></a>

This method was designed to tackle the problems of method 1 and 2, that is: improve the solution in a limited time all
while trying to avoid local minima. To do this, the algorithm integrates features of meta-heuristics such as the Evolutionary Algorithms
that provide a strategy to explore large solution spaces. These principals consist on creating an initial population of 
solutions from which child solutions will be produced taking some characteristics of their parents and exploring modifications to them.
Among the new population of solutions created only a set of the fittest solutions will remain to produce new children.  
this process continues iteratively until a stopping condition ( in this case time) is reached and the best solution is then returned. 

The performance of the algorithm depends on many factors:
* The quality of the initial solutions
* The strategies for creating child solutions
* The strategies to orient exploration and avoid local minima
* The speed to evaluate, compare and create new solutions (the algorithm strength relies on its ability to explore many mutations to allow evolution)

The algorithm, as defined by the strategies described here below, is designed to initially privilege the exploration 
of a wider solution space far from the vicinity of initial solutions. Then, as time goes by, the algorithm will tend 
to explore around the vicinity fo the best solutions (which will represent several local minima) to try to refine the solutions.

<p align="center"> <img src="images\dfs-ft-ea-flowchart.jpg" alt="DFS_EA_flowchart" height="700"/>
<br /> DFS_ft_EA algorithm
</p>

### Computing initial solutions:
The initial solutions are produced using the DFS algorithm with a heuristic based on a priority rule and the worker
selector rule. At each scheduling point the algorithm will compute the eligible actions described y the choice of task and worker. 
The set if eligible actions is then all possible combinations of enabled tasks by precedence and zone occupation
and available skilled workers. The heuristic will evaluate actions according to the rank of the task and the worker 
with respect to other tasks and workers. This is different to the Parallel Scheduling Scheme where workers where assigned
only after the task was selected by the priority rule. 

The algorithm produces 2-3 initial solutions using 1: the specified priority rule; 2: SPT rule; 3: MIS rule.
This will quickly provide feasible solutions. 

<p align="center"> <img src="images\initialSolution.png" alt="initialSolution"/>
<br /> Illustration: Initial Solution.
</p>

### Generating new populations:
#### Selection of branches
To generate a new population the algorithm selects intermediate nodes from the actual population
( current best solutions).  Each solution on the population produces 2 childs. For this , all intermediate nodes of the
solution are evaluated based on a fitness function:

<p align="center"> 
<img src="images\branchfitness.png" alt="branchfitness" width="200"/>
<br/>
<img src="images\probability.png" alt="probability" width="100" />
<br/>
<img src="images\unexploredaction.png" alt="unexploredaction" width="200"/>
</p>

Initially the algorithm will privilege the exploration of branches where with more unexplored actions.
Then, as time approaches to its deadline,  the algorithm will select branches where only a few options where available.

<p align="center"> 
<img src="images\creatingChildSolutions.png" alt="childSolutions" width="300"/>
</p>

#### Branch exploration (selection of actions)
Once branches are selected, solutions must be constructed out of them to create new solutions.  
These solutions are explored based also on a probability function:

<p align="center">
<img src="images\probability.png" alt="probability" width="100" />
<br/> Probability of selecting only among unexplored actions
</p>

Else, selection will consider both: unexplored and explored solutions.
Then, to select an action, all actions considered will be ranked according to the priority and worker selector rules.
An action is then selected according to a probability rule based on their ranking.

The intention of this rule is to  initially privilege the exploration of unexplored actions to widen the explored solution space.
The heuristic combining priority rule and worker selector rule will orient the exploration. As time approaches its deadline,
explored solutions will be more considered for selection, the use of probability function avoid to repetitively explore the same
solutions by allowing some randomness to the exploration. 

<p align="center">
<img src="images\propabilityActionSelection.png" alt="probabilityActionSelection" width="100"/>
<img src="images\sn.png" alt="sn" width="150"/>
<br/> Probability of selection with ranking i. 
</p>
<p align="center">
</p>

Where:
* a1= 1
* n = an =number of actions
* i = ranking of the action according to heuristic. 

### Selection of new population:
After exploring all selected branches and producing a new generation of solutions, only 10 of these "survive" for the next 
generation. For every generation the best first two solutions (i.e. those with shorter make-span) are selected then eight
other solutions are selected according to the probability function as a function fo their rank. This is the same function used for action selection.

<p align="center">
<img src="images\propabilityActionSelection.png" alt="probabilityActionSelection" width="100"/>
<img src="images\sn.png" alt="sn" width="150"/>
<br/> Probability of selection with ranking i. 
</p>
<p align="center">
</p>

This function will not lose the best solution found and will allow less fit solutions to survive that might be 
in the vicinity of, and therefore, lead to fitter results. 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

----------

## Contributing <a name="contributing"></a>

<span style="color: yellow;">
  TODO 
</span>.
<p align="right">(<a href="#readme-top">back to top</a>)</p>

## License <a name="license"></a>

<span style="color: yellow;">
  TODO 
</span>.
<p align="right">(<a href="#readme-top">back to top</a>)</p>


## Contact <a name="contact"></a>

<span style="color: yellow;">
  TODO 
</span>.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=for-the-badge
[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=for-the-badge
[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=for-the-badge
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=for-the-badge
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[ModelView]: images/ModelView.png
[FlexsimImg]: images/FlexsimImg.png
[ApacheLogo]: images/apache.png?style=for-the-badge&logo=react&logoColor=61DAFB
[Apache-url]: https://poi.apache.org/
[FlexSim-url]: https://flexsim.com/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com