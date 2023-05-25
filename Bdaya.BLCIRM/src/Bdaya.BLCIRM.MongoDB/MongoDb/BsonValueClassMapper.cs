using MongoDB.Bson;

namespace Bdaya.BLCIRM.MongoDB;

public class BsonValueClassMapper<T> : ICustomBsonTypeMapper
{
    public bool TryMapToBsonValue(object value, out BsonValue bsonValue)
    {
        if (value is not T casted)
        {
            bsonValue = BsonNull.Value;
            return false;
        }
        bsonValue = casted.ToBsonDocument();
        return true;
    }
}
