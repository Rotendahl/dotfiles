# Picks the right cat command based on the output
# I.e use imgcat if image, bat if interactive shell, otherwise cat
function tests
  if test -e *.sln && dotnet test 
    confetti
  else
    echo "Tests not configured for directory"
  end
end
