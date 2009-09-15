package org.compaction.model {
	import org.compaction.action.IItemAction;
	import org.compaction.action.ISimpleAction;
	import org.compaction.condition.ICondition;
	import org.compaction.validation.IValidator;
	import org.compaction.validation.IValidatorAdapter;
	
	/**
	 * The edit model represents common logic and actions required when a user is editing an object.
	 * 
	 * @author shanonmcquay
	 */
	public interface IEditModel {
		
		/**
		 * This is where you plug in your save logic.
		 * @param strategy The strategy you want to use to save your edited object.
		 */
		function set saveStrategy(strategy:ISaveStrategy): void;
		
		/**
		 * This is where you plug in your validation logic. 
		 * @param validator The validator you want to use to validate your edited object.
		 */
		function set validator(validator:IValidator): void;
		
		/**
		 * You can use the validation adapter to add flex components as validation listeners.
		 * @return The adapter that directs the validation process.
		 */
		function get adapter() : IValidatorAdapter;
		
		/**
		 * The action used to edit a new object.
		 * @return The edit action.
		 */
		function get edit():IItemAction;
		
		/**
		 * The action used to save changes made to the edited object.
		 * @return The save aciton.
		 */
		function get save():ISimpleAction;
		
		/**
		 * The action used to cancel changes made to the edited object.
		 * @return The cancel action.
		 */
		function get cancel():ISimpleAction;
		
		/**
		 * The condition that represents whether the model is currently editing an object.
		 * @return The editing condition.
		 */
		function get editing():ICondition;
		
		/**
		 * The condition that represents whether the user has made changes to the edited object.
		 * @return The changed condition.
		 */
		function get changed():ICondition;
		
		/**
		 * The condition that represents whether the edited object has passed all validaitons..
		 * @return The valid condition.
		 */
		function get valid():ICondition;
		
		/**
		 * The condition that represents whether the edited object has passed all validaitons..
		 * @return The valid condition.
		 */
		function get saving():ICondition;
		
		/**
		 * The edited object. 
		 * @return The object currently being edited.
		 */
		[Bindable(event="editModelEditedChanged")]
		function get edited(): *;
	}
}