#!/bin/bash
cd -- "$(dirname "$0")"
# That tells the system to use a Bourne shell interpreter,
# and then tells OSX to run this script from the current directory.
# Don't echo these commands:
set +v

repeat=

while [ "$repeat" = "" ]
do
    # Clear any preexisting filename variables
    filename=
    # Ask which file we're converting.
    echo "Which file? (Don't include the .md file extension): "
    read filename
    # Feedback
    echo "Running pandoc..."
    # Run pandoc
    pandoc -f markdown_mmd -t markdown_mmd "$filename".md --output="$filename".rst --atx-headers --wrap=none --toc --extract-media=""
    # Feedback
    echo "Done. Ready for another file."
    # Let the user easily run that again
    repeat=
    echo "Hit enter to convert another file, or any other key and enter to stop. "
    read repeat
    # Otherwise end
done
