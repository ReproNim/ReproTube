# ReproTube

A [DataLad](https://www.datalad.org/) collection of YouTube channels relevant to
[ReproNim](https://www.repronim.org/) and the broader neuroimaging community,
providing training and dissemination materials on reproducible neuroimaging,
data management, and related topics.

## Archived Channels

The following YouTube channels are archived as DataLad subdatasets:

| Channel | Description |
|---------|-------------|
| [ABCD-ReproNim Course](https://www.youtube.com/@abcd-repronimcourse2950) | Training for reproducible analyses of the ABCD Study data |
| [AFNI Bootcamp](https://www.youtube.com/@afnibootcamp) | AFNI software video documentation and bootcamp materials |
| [DataLad](https://www.youtube.com/@datalad) | Tutorials and discussions on research data management |
| [ReproNim](https://www.youtube.com/repronim) | Training and didactic materials from the Center for Reproducible Neuroimaging Computation |

Additional standalone videos from events like the Open Data in Neurophysiology
Symposium, NWB, BABS, and Open Minds @ Pitt are also included.

## Browse and Access

- **Web UI**: <https://datasets.datalad.org/repronim/ReproTube/web/> — browse all archived channels
  (note: non-channel subfolders are not yet visible there)
- **DataLad archive**: <https://datasets.datalad.org/?dir=/repronim/ReproTube/> — full dataset for DataLad access

## Getting the Data

Install this dataset with [DataLad](https://www.datalad.org/):

```bash
datalad install -r https://datasets.datalad.org/repronim/ReproTube/
```

To download a specific video:

```bash
git -c annex.security.allowed-ip-addresses=all annex get ReproNim/How_Would_ReproNim_do_That_.mp4
```
