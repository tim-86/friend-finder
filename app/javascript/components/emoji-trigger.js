import { EmojiButton } from '@joeattardi/emoji-button';
import Rails from '@rails/ujs';

const initEmojiButtons = () => {
  const triggers = document.querySelectorAll('.emoji-trigger');
  triggers.forEach((trigger) => {
    const picker = new EmojiButton();
    picker.on('emoji', selection => {
      // handle the selected emoji here
      trigger.innerHTML = selection.emoji;
      const index = trigger.dataset.interestIndex;
      const input = document.querySelector(`.emoji-value-${index}`)
      input.value = selection.emoji
      const form = trigger.parentNode
      Rails.fire(form, 'submit')
    });

    trigger.addEventListener('click', (event) => {
      event.preventDefault()
      picker.togglePicker(trigger)
    });
  })
}

export {initEmojiButtons}


