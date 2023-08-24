import i3ipc

ipc = i3ipc.Connection()

workspaces = ipc.get_tree().workspaces()

for workspace in workspaces:
  for w in workspace:
    if w.app_id is not None or w.window_class is not None:
      print(w.app_id)
      print(w.window_class)