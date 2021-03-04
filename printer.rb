class Printer
  def print_links(parent, child_links)
    puts "-------------------- Parent: #{parent} --------------------"
    child_links.each { |link| puts link }
    puts ""
  end
end
