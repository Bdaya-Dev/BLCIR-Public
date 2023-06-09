﻿using System.Collections.Generic;
using System.Security.Claims;
using Volo.Abp.DependencyInjection;
using Volo.Abp.Security.Claims;

namespace Bdaya.BLCIRM.Security;

[Dependency(ReplaceServices = true)]
public class FakeCurrentPrincipalAccessor : ThreadCurrentPrincipalAccessor
{
    protected override ClaimsPrincipal GetClaimsPrincipal()
    {
        return GetPrincipal();
    }

    private ClaimsPrincipal? _principal;

    private ClaimsPrincipal GetPrincipal()
    {
        if (_principal != null)
        {
            return _principal;
        }

        lock (this)
        {
            _principal ??= new ClaimsPrincipal(
                identity: new ClaimsIdentity(
                    claims: new List<Claim>
                    {
                        new Claim(type: AbpClaimTypes.UserId, value: "2e701e62-0953-4dd3-910b-dc6cc93ccb0d"),
                        new Claim(type: AbpClaimTypes.UserName, value: "admin"),
                        new Claim(type: AbpClaimTypes.Email, value: "admin@abp.io")
                    }
                )
            );
        }

        return _principal;
    }
}