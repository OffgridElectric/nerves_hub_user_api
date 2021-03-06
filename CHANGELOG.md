# Changelog

## v0.7.1

* New features
  * Allow description when registering CA Certificate with
  `NervesHubUserAPI.CACertificate.create/4` (thanks @brianberlin !! :tada:)

## v0.7.0

* Deprecations
  * `NervesHubUserAPI.Device.cert_list/4` has been moved to
    `NervesHubUserAPI.DeviceCertificate.list/4`
  * `NervesHubUserAPI.Device.cert_sign/5` has been moved to
    `NervesHubUserAPI.DeviceCertificate.sign/5`
* New features
  * Added `NervesHubUserAPI.DeviceCertificate.create/5` for import an existing
    trusted certificate for a device.
  * Added `NervesHubUserAPI.DeviceCertificate.delete/5` for deleting certificates
    from a device.
* Bug fixes
  * URI encode all parameters being used in the URL of the API requests.

## v0.6.0

Backwards incompatible changes:

The NervesHubUserAPI.Device and NervesHubUserAPI.DeviceCertificate endpoints
have moved to include `product` as part of its path.

It used to be

```text
/orgs/:org_name/devices*
```

They have moved to:

```text
/orgs/:org_name/products/:product_name/devices*
```

## v0.5.0

* New features
  * Added support managing user roles for organizations and products.
    * `OrgUser` `add / update / remove / list`
    * `ProductUser` `add / update / remove / list`

## v0.4.1

* New features
  * Support deleting devices via the API

## v0.4.0

Backwards incompatible changes:

Renamed the project `nerves_hub_user_api`
Changed configuration settings from `api_host` and `api_port` back to `host` and
`port`. You will need to update these your settings and the application name
in your`config.exs` file.

## v0.3.0

Backwards incompatible changes:

For clarity, the application config settings `host` and `port` were renamed to
`api_host` and `api_port`. If you're using your own NervesHub instance, you will
need to update your `config.exs`.

## v0.2.0

* Enhancements
  * Added `NervesHubCore.Device.list/2`

## v0.1.0

Initial release
