import axios from 'axios';

const api = axios.create({
  baseURL: 'http://0.0.0.0:3000/api/v1',
  timeout: 10000,
  headers: { 'Content-Type': 'application/json' }
});

export const fetchSomeData = async () => {
  try {
    const response = await api.get('/some_endpoint');
    return response.data;
  } catch (error) {
    console.error('Error fetching data:', error);
    throw error;
  }
};

export default api;
