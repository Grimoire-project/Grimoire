# Grimoire
Sourcery templates package manager.

# Installation
Run `brew install grimoire`.

# Usage
Create a `grimoire.yml` file:
```yml
spells:
  - karlHarnois/stubbable
```
Note: We plan to support spell versionning in the future.

Then run `grimoire update` to pull your templates. Grimoire will create a directory containing all of your templates. You will need to add that folder to your sourcery template paths.
```yml
templates:
  - Grimoire
```

# Supporting Grimoire for your templates
Create a `GrimoireSpec.yml` containing the following:
```yml
grimoire:
  version: 0.5
spells:
  - yourTemplateName
```
We plan to support multiple spells per repo in the future.
