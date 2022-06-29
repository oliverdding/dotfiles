function img_encode -a source_image -d "encode image with base64 and copy into clipboard"
    echo -e "data:image/*;base64,"(base64 -i $source_image) | pbcopy
end
