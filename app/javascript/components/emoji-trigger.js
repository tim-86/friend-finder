import { EmojiButton } from '@joeattardi/emoji-button';

const initEmojiButtons = () => {
  const triggers = document.querySelectorAll('.emoji-trigger');
  triggers.forEach((trigger) => {
    const picker = new EmojiButton();
    picker.on('emoji', selection => {
      // handle the selected emoji here
      trigger.innerHTML = selection.emoji;
    });

    trigger.addEventListener('click', () => picker.togglePicker(trigger));
  })
}

export {initEmojiButtons}


