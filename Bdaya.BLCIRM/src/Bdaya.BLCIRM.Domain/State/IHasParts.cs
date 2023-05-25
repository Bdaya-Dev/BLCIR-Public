using System.Collections;
using System.Collections.Generic;

namespace Bdaya.BLCIRM.State;

public interface IHasParts
{
    IEnumerable<object?> GetParts();
}