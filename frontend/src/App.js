import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import HomePage from './pages/HomePage';
import NotFoundPage from './pages/NotFoundPage';
import { Provider } from 'react-redux';
import store from './redux/store';

function App() {
  return (
    <Provider store={store}>
      <Router>
        <Switch>
          <Route path="/" component={HomePage} exact />
          <Route path="*" component={NotFoundPage} />
        </Switch>
      </Router>
    </Provider>
  );
}

ReactDOM.render(<App />, document.getElementById('root'));
