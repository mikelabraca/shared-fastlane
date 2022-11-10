# shared-fastlane
This is the repo containing all the fastlane configuration needed to run fastlane on tkww apps.

## Default implementation

This is a `Fastfile` example content in the client side:

```
default_platform(:ios)

ENV["fastlane_project"] = "fastlane-tk"
import_from_git(url: "git@github.com:mikelabraca/shared-fastlane.git",
                  path: "fastlane/Fastfile")
```

Where the `ENV["fastlane_project"]` is the specific project we want to use:  
* `fastlane-tk`: for The Knot Planner and the Bump.   
* `fastlane-gp`: for international apps.

All the clients should have the same `Fastfile` and the only difference between them is the `ENV["fastlane_project"]`.

## Development and testing locally

If we want to develop new feature or lanes locally we have to modify the client `Fastfile` as it follows:

```
# fastlane project we want to use
# It depends of the client app we are testing
ENV["fastlane_project"] = "fastlane-tk" # or "fastlane-gp"

# ENV value to use the fastlane repo locally
ENV["local_fastlane"] = 'true'

if ENV["local_fastlane"] == 'true'
  puts "⏳ Loading local fastlane..."
  # Path to the local fastlane repo
  ENV["local_fastlane_dir"] = "{path-to-the-local-repo}"
  import "#{ENV['local_fastlane_dir']}/fastlane/Fastfile"
else 
  puts "⏳ Loading fastlane from git..."
  # If we are developing in a branch. if not, use main
  ENV["fastlane_remote_branch"] = "feature/testing-local-imports"
  import_from_git(url: "git@github.com:mikelabraca/shared-fastlane.git",
                  path: "fastlane/Fastfile",
                  branch: ENV["fastlane_remote_branch"])
end
```

For this case, we have some `ENV` variables that can be set depending of the configuration we want:   
* `ENV["fastlane_project"]`: as mentioned above, the fastlane project to use.   
* `ENV["local_fastlane"]`: value indicating if we are using the local fastlane repo.   
* `ENV["local_fastlane_dir"]`: the path to the directory containing the downloaded repo.   
* `ENV["fastlane_remote_branch"]`: in case of testing the remote repo, specify the development branch.  