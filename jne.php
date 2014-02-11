<?php
/*
Plugin Name: JNE Tracking Widget
Plugin URI: http://www.agenwebsite.com/
Description: Plugin untuk menambahkan fitur JNE Tracking agar customer Anda dapat mentrack barang mereka melalui widget di situs Anda.
Version: 1.0.0
Author: Fairuz Fatin
Author URI: http://itsmefurzy.blogspot.com/
*/
add_action('plugins_loaded', 'jne_track_init', 0);
function jne_track_init() {
	class JNE_TRACKING extends WP_Widget {

		function JNE_TRACKING() {
			$widget_ops = array('description' => 'Tambahkan widget JNE Tracking.' );
			parent::WP_Widget(false, __('JNE Tracking', 'AgenWebsite'),$widget_ops);      
		}

		function widget($args, $instance) {  
			extract( $args );
			$title = $instance['title'];
			$placeholder = $instance['placeholder'];
			$button = $instance['button'];
	?>
			<?php echo $before_widget; ?>
				<?php echo $before_title; ?>
					<?php echo $title; ?>
				<?php echo $after_title; ?>
				<form action="http://jne.co.id/index.php" method="GET" target="_blank">
					<input type="hidden" name="mib" value="tracking.detail"/>
					<input type="text" name="awb" placeholder="<?php echo $placeholder; ?>"/>
					<input type="submit" value="<?php echo $button; ?>" class="button alt" />
				</form>
			<?php echo $after_widget; ?>
	<?php
		}

		function update($new_instance, $old_instance) {                
			return $new_instance;
		}

		function form($instance) {  
			global $wpdb;
			$title = $instance['title'];
			$placeholder = $instance['placeholder'];
			$button = $instance['button'];
			if(empty($placeholder))
				$placeholder = 'Masukkan nomor resi JNE';
			if(empty($button))
				$button = 'Submit';
	?>
			<p>
				<label for="<?php echo $this->get_field_id('title'); ?>"><?php _e('Title:','AgenWebsite'); ?></label>
				<input type="text" name="<?php echo $this->get_field_name('title'); ?>" value="<?php echo $title; ?>" class="widefat" id="<?php echo $this->get_field_id('title'); ?>" />
			</p>
			<p>
				<label for="<?php echo $this->get_field_id('placeholder'); ?>"><?php _e('Placeholder:','AgenWebsite'); ?></label>
				<input type="text" name="<?php echo $this->get_field_name('placeholder'); ?>" value="<?php echo $placeholder; ?>" class="widefat" id="<?php echo $this->get_field_id('placeholder'); ?>" />
			</p>
			<p>
				<label for="<?php echo $this->get_field_id('placeholder'); ?>"><?php _e('Button Text:','AgenWebsite'); ?></label>
				<input type="text" name="<?php echo $this->get_field_name('button'); ?>" value="<?php echo $button; ?>" class="widefat" id="<?php echo $this->get_field_id('button'); ?>" />
			</p>
	<?php
		}
	} 

	function register_jne_tracking_widget() {
		register_widget('JNE_TRACKING');
	}
	add_action( 'widgets_init', 'register_jne_tracking_widget' );

}
?>