function img_encode -a source_image -d "encode image with base64 and copy into clipboard"
    if set -q source_image; and string length -q -- $source_image; and test -e $source_image
        echo -e "data:image/*;base64,"(base64 -i $source_image) | pbcopy
    else
        echo -e "data:image/*;base64,"(pngpaste -b) | pbcopy
    end
end
