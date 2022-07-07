require('orgmode').setup({
	org_agenda_files = {
		'~/Library/Mobile Documents/com~apple~CloudDocs/Home/org/*'
	},
	org_default_notes_file = '~/Library/Mobile Documents/com~apple~CloudDocs/Home/default.org',
  org_todo_keywords = {
    'TODO',
    'NEXT',
    'DONE',
    'WAITING'
    'CANCELLED',
    'MEETING',
    'DELEGATED'
  },
  org_capture_templates = {
    t = {
      description = 'Task',
      template = '* TODO %?\n %u'
    }
  },
  mappings = {
    global = {
      org_agenda = {'gA', '<Leader>oa'},
      org_capture = {'gC', '<Leader>oc'}
    }
  },
  notifications = {

  }
})
