# ReproTube inceptor

This is not even a prototype but just a result of running 3 git annex commands
(check git history for datalad run records) to fetch 3 sample channels of intrest.

## HOWTO

ATM to download actual video you would need to have youtube-dl installed
and invoke git annex with special option to allow download from/through potentially 
dangerous media, e.g.

   git -c annex.security.allowed-ip-addresses=all annex get ReproNim/How_Would_ReproNim_do_That_.m

