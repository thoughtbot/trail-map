class UUIDGenerator
  def initialize(file_name)
    @file_name = file_name
  end

  def run
    @trail = JSON.parse(File.read(@file_name))
    generate_uuids
    save_trail
  end

  private

  def generate_uuids
    steps = @trail['steps']
    steps.each do |step|
      generate_uuids_for_step(step)
    end
  end

  def generate_uuids_for_step(step)
    %w(resources references validations).each do |item_type|
      if step[item_type]
        step[item_type].each do |item|
          unless item['id']
            item['id'] = Digest::SHA1.hexdigest(item['title'])
          end
        end
      end
    end
  end

  def save_trail
    pretty_json = JSON.pretty_generate(@trail) + "\n"
    IO.write(@file_name, pretty_json)
    print '.'
  end
end
