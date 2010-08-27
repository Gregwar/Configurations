# -*- coding: utf-8 -*-
import gtk, gedit
	
class AlternatePyWindowHelper():
	def __init__(self, plugin, window):
		self._window = window
		self._plugin = plugin
                self._nblines = 0
                self.back = None

        def desactivate(self):
            pass

        def keypress(self, action, e):
            if self._doc.get_line_count() != self._nblines:
                self._nblines = self._doc.get_line_count()
                self.alternate()

        def update_ui(self):
            self._doc = self._window.get_active_document()
            if self._doc:
                self.view=self._window.get_active_view()
                self.view.connect('key-release-event', self.keypress)
                self.view.connect('key-press-event', self.keypress)

		table=self._doc.get_tag_table()
		self.back=table.lookup('alternate_back')
		if self.back==None:
			self.back=self._doc.create_tag('alternate_back',paragraph_background="#000000")
            self.alternate()

        def alternate(self):
            if self.back and self._doc:
                for line in xrange(1, self._doc.get_line_count()):
                    self._doc.remove_tag(self.back, self._doc.get_iter_at_line(line), self._doc.get_iter_at_line(line+1))
                for line in xrange(1, self._doc.get_line_count(), 2):
                    self._doc.apply_tag(self.back, self._doc.get_iter_at_line(line), self._doc.get_iter_at_line(line+1))


class AlternatePy(gedit.Plugin):
	def __init__(self):
		gedit.Plugin.__init__(self)
		self._instances = {}

	def activate(self, window):
		self._instances[window] = AlternatePyWindowHelper(self, window)

	def deactivate(self, window):
		self._instances[window].deactivate()
		del self._instances[window]

	def update_ui(self, window):
		self._instances[window].update_ui()
