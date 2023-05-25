namespace Bdaya.BLCIRM.Repos;

using Bdaya.BLCIRM.MongoDB;
using Microsoft.Extensions.Options;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using Volo.Abp.DependencyInjection;
using Volo.Abp.Domain.Entities;
using Volo.Abp.Domain.Entities.Events;
using Volo.Abp.Domain.Entities.Events.Distributed;
using Volo.Abp.Domain.Repositories.MongoDB;
using Volo.Abp.MongoDB;
using Volo.Abp.Uow;


//public class BulkRepoBase<TEntity>
//    : MongoDbRepository<BLCIRMMongoDbContext, TEntity>
//    where TEntity : class, IEntity
//{
//    public BulkRepoBase(IMongoDbContextProvider<BLCIRMMongoDbContext> dbContextProvider)
//        : base(dbContextProvider)
//    {
//    }

//    public override Task InsertManyAsync(IEnumerable<TEntity> entities, bool autoSave = false, CancellationToken cancellationToken = default)
//    {
//        return base.InsertManyAsync(entities, autoSave, cancellationToken);
//    }

//    protected virtual void TriggerEntityUpdateEvents(IEnumerable<TEntity> entities)
//    {

//    }
//    protected virtual void TriggerEntityDeleteEvents(IEnumerable<TEntity> entities)
//    {

//    }
//    protected virtual void TriggerEntityCreatedEvents(IEnumerable<TEntity> entities)
//    {

//    }
//    protected override void TriggerEntityUpdateEvents(TEntity entity)
//    {
//        base.TriggerEntityUpdateEvents(entity);
//    }
//    protected override void TriggerEntityDeleteEvents(TEntity entity)
//    {
//        base.TriggerEntityDeleteEvents(entity);
//    }


//}

//public class BulkRepoBase<TEntity, TKey>
//    : MongoDbRepository<BLCIRMMongoDbContext, TEntity, TKey>
//    where TEntity : class, IEntity<TKey>
//{
//    public BulkRepoBase(IMongoDbContextProvider<BLCIRMMongoDbContext> dbContextProvider)
//        : base(dbContextProvider)
//    {
//    }
//}
