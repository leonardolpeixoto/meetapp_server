#!/bin/bash

ls

mix ecto.create
mix ecto.migrate
mix phx.server