## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

!AzureNetworkDiagram.png

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the YML file may be used to install only certain pieces of it, such as Filebeat.

!elkstack.yml

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly resilient, in addition to restricting access to the network.

- Load balancers are one method of preventing DoS attacks. DoS attacks are a common problem with websites. One way to mitigate DoS attacks is to have multiple servers running the same website, with a load balancer in front of them. A load balancer provides a website an external IP address that is accessed by the internet. The load balancer receives any traffic that comes into the website and distributes it across multiple servers. As the website receives more traffic, more servers can be added to the group ("pool") of servers that the load balancer has access to. This helps distribute traffic evenly among the servers and mitigates DoS attacks. This load balancer typically also has a health probe function. This function checks regularly to make sure all of the machines behind the load balancer are functioning before sending traffic to them. Machines with issues are reported, and the load balancers stop sending traffic to those machines. This system can still be overwhelmed with traffic and taken down, but it is much more resilient than if a single server was running the website.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the file systems and system metrics.

- Filebeat collects data about the file system
- Metricbeat collects machine metrics, such as uptime

The configuration details of each machine may be found below.

| Name          | Function           | IP Address             | Operating System |
|---------------|--------------------|------------------------|------------------|
| Jump Box      | Gateway            | 40.71.25.226 10.0.0.4  | Linux            |
| VM1           | Web Server         | 10.0.0.9               | Linux            |
| VM2           | Web Server         | 10.0.0.10              | Linux            |
| VM3           | Web Server         | 10.0.0.11              | Linux            |
| VM4           | Web Server         | 10.0.0.12              | Linux            |
| ELK Stack     | Network Monitoring |  23.96.21.23510.0.0.13 | Linux            |
| Load Balancer | Load Balancing     | 52.154.70.211          | N/A              |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 74.110.152.146

Machines within the network can only be accessed by SSH.
- _TODO: Which machine did you allow to access your ELK VM? What was its IP address?_

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes/No              | 10.0.0.1 10.0.0.2    |
|          |                     |                      |
|          |                     |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _TODO: What is the main advantage of automating configuration with Ansible?_

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- ...
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
