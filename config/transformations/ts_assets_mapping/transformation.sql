  SELECT ts.externalId AS externalId,
         ast.id AS assetId
  FROM `_cdf`.`timeseries` AS ts

  INNER JOIN `_cdf`.`assets` AS ast ON split(ts.externalId, ":") [0] = ast.externalId
destination:
  type: timeseries
ignoreNullFields: true
shared: true
action: update
dataSetExternalId: uc:001:oee:ds