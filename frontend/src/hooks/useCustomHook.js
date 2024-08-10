import { useState, useEffect } from 'react';
import { fetchSomeData } from '../services/api';

const useCustomHook = () => {
  const [data, setData] = useState(null);
  const [error, setError] = useState(null);

  useEffect(() => {
    const loadData = async () => {
      try {
        const result = await fetchSomeData();
        setData(result);
      } catch (err) {
        setError(err);
      }
    };
    loadData();
  }, []);

  return { data, error };
};

export default useCustomHook;
