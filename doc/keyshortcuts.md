|                |                                | Default             |     VIM    |     Sublime     | PhpStorm |
|----------------|--------------------------------|---------------------|:----------:|:---------------:|:--------:|
| Search/Select  | Search everything              | Shift+Shift /Ctrl+p |            |                 |          |
|                | Navigator Symbol in project    | ctrl+shift+t        |            |                 |          |
|                | Navigate File                  | ctrl+p              |            |                 |          |
|                | List file Structure/Outline    | ctrl+t              |            |                 |          |
|                | Recently Changed Files         | Alt+Shift+e         |            |                 |          |
|                | Last Alternative File          | Ctrl+6(^)           |            |                 |          |
|                | Last Cursor                    | Ctrl+o              |            |                 |          |
|                | Show current file in project   |                     |            |                 |          |
|                | Cursor to begin of line        | Ctrl+←              | 0          |                 |          |
|                | Cursor to end of line          | Ctrl+→              | $          |                 |          |
|                | Go to Line                     | Ctrl+L              | :n         |                 |          |
|                | Move current line up           | Ctrl + alt + ↑      |            |                 |          |
|                | Move current line down         | Ctrl + alt + ↓      |            |                 |          |
|                | Duplicate Line                 | ctrl+d              |            |                 |          |
|                | Delete line                    | ctrl+delete         | dd         |                 |          |
|                | Pre Change                     | Ctrl + ↑            |  Ctrl+o    |                 |          |
|                | Next Change                    | Ctrl + ↓            |            |                 |          |
|                |                                |                     |            |                 |          |
|                | Multiple Cursors the next      | Ctrl+=              |            |                 |          |
|                | Multiple Cursors all           | Ctrl + Shift+ =     |            |                 |          |
|                | Select All Text                | Ctrl+a              |            |                 |          |
|                | Find/replace in file           | Ctrl+f              | :%/xx/xx/g |                 |          |
|                | Fine/replace in projects/files | Ctrl+Shift+f        |            |                 |          |
|                | Find next                      | Ctrl+k              | n          |                 |          |
| SideBar        | Show/Hide Sidebar              | Ctrl+`              | space+1    |                 |          |
|                | Bookmark new                   |                     |            |                 |          |
|                | Bookmark list                  |                     |            |                 |          |
|                | Bookmark next                  |                     |            |                 |          |
|                | Bookmark pre                   |                     |            |                 |          |
| Code           | Format                         | Alt+=               | =          |                 |          |
|                | Insert template/snippet        | Alt+j               |            |                 |          |
|                | Comment line                   | Alt+/               | gcc        |                 |          |
|                | Comment lines                  | Alt+Shift+/         | gc{motion} |                 |          |
|                | Refactor This                  | alt+f               |            |                 |          |
|                | Jump to previous function      | alt+down            | [[         |                 |          |
|                | Jump to next function          | alt+up              | ]]         |                 |          |
|                | Select method                  |                     |            |                 |          |
|                | Add code doc                   | alt+c               |            |                 |          |
|                | Open to type hierachy          | alt+h               |            |                 |          |
|                | Find usages/references         | alt+u               |            |                 |          |
|                | Go to type declaration         | ctrl+b              |            |                 |          |
| System Setting | Open Preferences               | Cmd+,               |            | y               | y        |
|                | Enter Action or  Option Name   | Cmd + Shift + P     |            | Command Palette | y        |
| Misc           | Full Schreen                   | Ctrl + Enter        |            |                 |          |
|                | Help                           | Cmd+Shift+/         |            |                 |          |
|                | Shortcuts cheatsheet           |                     |            |                 |          |
|                | Close current tab/file         | Cmd+w               |            |                 |          |
|                | Close all tabs/files           |                     |            |                 |          |
|                | Quit the application           | Cmd+q               |            |                 |          |


---

Session/Windows/Tabs/Panes
==========================
| **Session(Tmux)**  | prefix: <c-b>                      |   |
|--------------------|------------------------------------|---|
|                New | tmux new -s session-name           |   |
|             Rename | <c-b>$                             |   |
|              Close | tmux kill-session -t session-name  |   |
|               List | <c-b>s                             |   |
|               Next | <c-b>)                             |   |
|               Prev | <c-b>(                             |   |
|           restore  | <c-b><c-r>                         |   |
|               save | <c-b><c-r>                         |   |
|                    |                                    |   |
| **Window/Tab**     | Tmux/Vim/Sublime/PhpStorm          |   |
|                New | <c-b>c                             |   |
|             Rename | <c-b>,                             |   |
|              Close | <c-b>&                             |   |
|               List | <c-b>w                             |   |
|         Goto Win n | <c-b>0-9                           |   |
|               Next | <c-b>]                             |   |
|           Previous | <c-b>[                             |   |
| Copy Mode          | <c-b>m                             |   |
|                    |                                    |   |
| **Pane**           |  Vim/Sublime/PhpStorm prefix:<c-v> |   |
|       New H/V pane | <c-v>/  or <c-v>-                  |   |
|              Close | <c-v>x                             |   |
|               List | <c-v>q                             |   |
|         Resize H/V | <c-v>HJKL                          |   |
|        Goto Pane n | <c-v>0-9                           |   |
| Go to U/D/L/R Pane | <c-v>hjkl                          |   |
| Move pane to left  | <c-v>{                             |   |
| Move pane to right | <c-v>}                             |   |
