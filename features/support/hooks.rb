Before do
  page.current_window.resize_to(1440, 900)
end

After do
  shot = page.save_screenshot("logs/temp_shot.png")
  log shot

  Allure.add_attachment(
    name: "Screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(shot),
  )
end
