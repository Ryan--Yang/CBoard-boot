package org.cboard.solr;

import org.apache.commons.pool2.PooledObject;
import org.apache.commons.pool2.PooledObjectFactory;
import org.apache.commons.pool2.impl.DefaultPooledObject;
import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.impl.LBHttpSolrClient;

/**
 * Created by JunjieM on 2017-7-7.
 */
public class SolrServerFactory implements PooledObjectFactory<SolrClient> {

    private String[] servers;
    LBHttpSolrClient.Builder builder = new LBHttpSolrClient.Builder();

    public SolrServerFactory(String solrServices, String collectionName) {
        String[] tempServers = solrServices.split(",");
        servers = new String[tempServers.length];
        for (int i = 0; i < tempServers.length; i++) {
            servers[i] = "http://" + tempServers[i] + "/solr/" + collectionName;
            builder.withBaseSolrUrl(servers[i]);
        }
    }

    @Override
    public PooledObject<SolrClient> makeObject() throws Exception {


        SolrClient solrClient = builder.build();
        return new DefaultPooledObject(solrClient);
    }
    @Override
    public void destroyObject(PooledObject<SolrClient> pool) throws Exception {
        SolrClient solrClient = pool.getObject();
        if (solrClient != null) {
            solrClient.close();
            solrClient = null;
        }
    }
    @Override
    public void activateObject(PooledObject<SolrClient> pool) throws Exception {
        // TODO Auto-generated method stub
    }
    @Override
    public void passivateObject(PooledObject<SolrClient> pool) throws Exception {
        // TODO Auto-generated method stub
    }
    @Override
    public boolean validateObject(PooledObject<SolrClient> pool) {
        // TODO Auto-generated method stub
        return false;
    }

}