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
| **Session(Tmux)**  | prefix: <pre<</pre></code><code<</pre></code><c-b<</pre></code>                      |   |
|--------------------|------------------------------------|---|
|                New | tmux new -s session-name           |   |
|             Rename | <pre<</pre></code><code<</pre></code><c-b<</pre></code>$                             |   |
|              Close | tmux kill-session -t session-name  |   |
|               List | <pre<</pre></code><code<</pre></code><c-b<</pre></code>s                             |   |
|               Next | <pre<</pre></code><code<</pre></code><c-b<</pre></code>)                             |   |
|               Prev | <pre<</pre></code><code<</pre></code><c-b<</pre></code>(                             |   |
|           restore  | <pre<</pre></code><code<</pre></code><c-b<</pre></code><pre<</pre></code><code<</pre></code><c-r<</pre></code>                         |   |
|               save | <pre<</pre></code><code<</pre></code><c-b<</pre></code><pre<</pre></code><code<</pre></code><c-r<</pre></code>                         |   |
|                    |                                    |   |
| **Window/Tab**     | Tmux/Vim/Sublime/PhpStorm          |   |
|                New | <pre<</pre></code><code<</pre></code><c-b<</pre></code>c                             |   |
|             Rename | <pre<</pre></code><code<</pre></code><c-b<</pre></code>,                             |   |
|              Close | <pre<</pre></code><code<</pre></code><c-b<</pre></code>&                             |   |
|               List | <pre<</pre></code><code<</pre></code><c-b<</pre></code>w                             |   |
|         Goto Win n | <pre<</pre></code><code<</pre></code><c-b<</pre></code>0-9                           |   |
|               Next | <pre<</pre></code><code<</pre></code><c-b<</pre></code>]                             |   |
|           Previous | <pre<</pre></code><code<</pre></code><c-b<</pre></code>[                             |   |
| Copy Mode          | <pre<</pre></code><code<</pre></code><c-b<</pre></code>m                             |   |
|                    |                                    |   |
| **Pane**           |  Vim/Sublime/PhpStorm prefix:<pre<</pre></code><code<</pre></code><c-v<</pre></code> |   |
|       New H/V pane | <pre<</pre></code><code<</pre></code><c-v<</pre></code>/  or <pre<</pre></code><code<</pre></code><c-v<</pre></code>-                  |   |
|              Close | <pre<</pre></code><code<</pre></code><c-v<</pre></code>x                             |   |
|               List | <pre<</pre></code><code<</pre></code><c-v<</pre></code>q                             |   |
|         Resize H/V | <pre<</pre></code><code<</pre></code><c-v<</pre></code>HJKL                          |   |
|        Goto Pane n | <pre<</pre></code><code<</pre></code><c-v<</pre></code>0-9                           |   |
| Go to U/D/L/R Pane | <pre<</pre></code><code<</pre></code><c-v<</pre></code>hjkl                          |   |
| Move pane to left  | <pre<</pre></code><code<</pre></code><c-v<</pre></code>{                             |   |
| Move pane to right | <pre<</pre></code><code<</pre></code><c-v<</pre></code>}                             |   |
