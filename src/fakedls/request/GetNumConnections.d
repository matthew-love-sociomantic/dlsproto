/*******************************************************************************

    Naive implementation of DLS `GetNumConnections` request

    Copyright:
        Copyright (c) 2015-2017 sociomantic labs GmbH. All rights reserved.

    License:
        Boost Software License Version 1.0. See LICENSE.txt for details.

*******************************************************************************/

module fakedls.request.GetNumConnections;

/*******************************************************************************

    Imports

*******************************************************************************/

import ocean.transition;

import Protocol = dlsproto.node.request.GetNumConnections;

/*******************************************************************************

    Request implementation

*******************************************************************************/

public scope class GetNumConnections : Protocol.GetNumConnections
{
    import fakedls.mixins.RequestConstruction;

    /***************************************************************************

        Adds this.resources and constructor to initialize it and forward
        arguments to base

    ***************************************************************************/

    mixin RequestConstruction!();

    /***************************************************************************

        Must return total num_conns of established connections to this node.

        Returns:
            metadata that includes number of established connections

    ***************************************************************************/

    override protected NumConnectionsData getConnectionsData ( )
    {
        assert (false,
            "GetNumConnections is not supported by fake DLS node");
    }
}
