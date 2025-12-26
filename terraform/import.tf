import {
  id = "projects/mb-internal-srv-tst/zones/europe-west4-a/instances/instance-20251215-184729"
  to = google_compute_instance.instance-20251215-184729
}

# Network 1: default
import {
  id = "projects/mb-internal-srv-tst/global/networks/default"
  to = google_compute_network.default
}

import {
  id = "projects/mb-internal-srv-tst/regions/europe-west4/subnetworks/default"
  to = google_compute_subnetwork.default
}

# Network 2: services-nl-network
import {
  id = "projects/mb-internal-srv-tst/global/networks/services-nl-network"
  to = google_compute_network.services-nl-network
}

import {
  id = "projects/mb-internal-srv-tst/regions/europe-west4/subnetworks/enum-euwe4"
  to = google_compute_subnetwork.enum-euwe4
}

