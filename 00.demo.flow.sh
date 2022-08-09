
# Console Layout : Admin Layout
# Console Layout : Developer Layout

# Admin Console : Getting Cluster Details High Level
  # Show Main Page and utilization
  # Control Plane status
    # Click and Show the components
    # Talk about not to worry even in degradation. Only applicable during scaling events or restarts
  # Talk about the Resources and time frame
  # Talk about drill down : Master and Worker Nodes

# Switch the project to "openshift-console"

# Developer Console
  # Visual deployments
  # How did the "pods" navigation item come?
  # Show pods belong to different nodes
  # Dynamic Navigation Change

# Simulation Begin
# ------------------------------------------------------------------------------------------------------------------------------------------------
kind: Deployment
apiVersion: apps/v1
metadata:
  name: hello-k8s-01
  labels:
    run: hello-k8s
spec:
  replicas: 1
  selector:
    matchLabels:
      run: hello-k8s
  template:
    metadata:
      labels:
        run: hello-k8s
    spec:
      containers:
      - name: hello-k8s
        image: quay.io/naveenkendyala/quarkus-demo-quarkusjvm-hello:v2
        resources: 
          requests:
            memory: "64Mi"
            cpu: "17"
          limits:
            memory: "128Mi"
            cpu: "18"
  strategy: {}
# Project : app-demo
# Scenario 01 : Ridiculous CPUs : Talk about scheduler
              : Indicate the pod never got assigned to a node
# Scenario 02 : Change deployment name, Change request CPUs to 5 and limit to 6
# Scenario 03 : Update deployment with the Image and Fix the Error

# ------------------------------------------------------------------------------------------------------------------------------------------------
kind: Deployment
apiVersion: apps/v1
metadata:
  name: hello-k8s-01
  labels:
    run: hello-k8s
spec:
  replicas: 1
  selector:
    matchLabels:
      run: hello-k8s
  template:
    metadata:
      labels:
        run: hello-k8s
    spec:
      containers:
      - name: hello-k8s
        image: quay.io/naveenkendyala/quarkus-demo-quarkusjvm-hello:v1
        resources: 
          requests:
            memory: "64Mi"
            cpu: "5"
          limits:
            memory: "128Mi"
            cpu: "6"
  strategy: {}

# Project : limits-demo
# Scenario 01 :
  # Why is nothing happening
  # Developer   : Show "Event Streams"
  # Admin       : Show Limit Ranges

# Scenario 02 : Change deployment name, Change the CPUs to 500m and 1
# Scenario 03 : Update deployment : Change Replicas to 15

# ------------------------------------------------------------------------------------------------------------------------------------------------
kind: Deployment
apiVersion: apps/v1
metadata:
  name: hello-k8s-01
  labels:
    run: hello-k8s
spec:
  replicas: 15
  selector:
    matchLabels:
      run: hello-k8s
  template:
    metadata:
      labels:
        run: hello-k8s
    spec:
      containers:
      - name: hello-k8s
        image: quay.io/naveenkendyala/quarkus-demo-quarkusjvm-hello:v1
        resources: 
          requests:
            memory: "64Mi"
            cpu: "500m"
          limits:
            memory: "128Mi"
            cpu: "1"
  strategy: {}

# Project : limits-quotas-demo
# Scenario 01 :
  # Only 8 are running. Why?
  # Developer       : Show the Events : Filter to "Warnings"
  # Administrator   : Show the object : Quotas in the namespace
  # Developer       : Show the Project --> Resource Quotas

# Developer : Show the warning about probes. Let's see how they play out

# ------------------------------------------------------------------------------------------------------------------------------------------------

# Project : probess-demo

# Scenario 01 : What is happening and why the pod failing?
  # Developer       : Show the Events on Pod
  # Developer       : Talk about importance of Readiness & Liveness Probes
  # Developer       : Change the initial delay of Readiness an Liveness to 25 & 30 seconds

# Change the Display Option to 
  # Select Consumption
  # Select Pod Count
  # Select Labels

# ------------------------------------------------------------------------------------------------------------------------------------------------
# project quarkus-demo
# Uncomment Pod Count 
# Change radio button from "Consumption" to "Connectivity"
# 
# 
# ------------------------------------------------------------------------------------------------------------------------------------------------