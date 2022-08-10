def user_md_parser(smart_md, md, video_info, url_info):
  # Add multiple artists to the title
  #
  # Ex.
  # Title: Foo title
  # Artist: Foo, Bar, Baz, Qux
  #
  # To:
  # Title: Foo title (feat. Bar, Baz & Qux)
  # Artist: Foo
  split_artists = md['artist'].split(", ")
  if len(split_artists) > 1:
    md['artist'] = split_artists[0]
    
    features = " (feat. " + split_artists[1]
    
    idx = 2
    artists_size = len(split_artists) - 1
    for artist in split_artists[2:]:
      if idx == artists_size:
        features += " & "
      else:
        features += ", "
      
      idx += 1
      features += artist
    features += ')'
    
    md['title'] += features
  return md
