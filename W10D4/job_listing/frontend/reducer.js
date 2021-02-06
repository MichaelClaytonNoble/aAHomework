import {SWITCH_LOCATION} from './actions';
const initialState = {
  city: "Please Select", 
  jobs: []
};

const reducer = (state = initialState, action) => {
  Object.freeze(state);
  const nextState = Object.assign({}, state);

  switch(action.type){
    case (SWITCH_LOCATION):
      console.log(nextState);
      nextState['city'] = action.city;
      nextState.jobs = action.jobs;
      return nextState;
    
    default:
      return state;
  }
};


window.reducer = reducer; 
export default reducer;
