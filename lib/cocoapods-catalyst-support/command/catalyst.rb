require 'colorize'

module Pod
  class Command
    # This is an example of a cocoapods plugin adding a top-level subcommand
    # to the 'pod' command.
    #
    # You can also create subcommands of existing or new commands. Say you
    # wanted to add a subcommand to `list` to show newly deprecated pods,
    # (e.g. `pod list deprecated`), there are a few things that would need
    # to change.
    #
    # - move this file to `lib/pod/command/list/deprecated.rb` and update
    #   the class to exist in the the Pod::Command::List namespace
    # - change this class to extend from `List` instead of `Command`. This
    #   tells the plugin system that it is a subcommand of `list`.
    # - edit `lib/cocoapods_plugins.rb` to require this file
    #
    # @todo Create a PR to add your plugin to CocoaPods/cocoapods.org
    #       in the `plugins.json` file, once your plugin is released.
    #
    class Catalyst < Command
    
      self.summary = 'Configure Catalyst Support in your Podfile.'

      self.description = <<-DESC
        This plugin will set up your Podfile and create the necessary variables to configure your macCatalyst App.
      DESC

      # self.abstract_command = true
      # self.default_subcommand = 'list'

      self.arguments = []

      def run
        UI.puts "Commands:\n"
        UI.puts_indented "+ init\tSet up your Podfile to use `cocoapods-catalyst-support`".green
        UI.puts_indented "+ validate\tValidate your catalyst configuration.".green
      end

    end
  end
end
