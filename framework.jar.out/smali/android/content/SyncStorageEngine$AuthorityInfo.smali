.class public Landroid/content/SyncStorageEngine$AuthorityInfo;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthorityInfo"
.end annotation


# instance fields
.field final account:Landroid/accounts/Account;

.field final authority:Ljava/lang/String;

.field backoffDelay:J

.field backoffTime:J

.field delayUntil:J

.field enabled:Z

.field final ident:I

.field final periodicSyncs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/os/Bundle;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field syncable:I

.field final userId:I


# direct methods
.method constructor <init>(Landroid/accounts/Account;ILjava/lang/String;I)V
    .locals 4
    .parameter "account"
    .parameter "userId"
    .parameter "authority"
    .parameter "ident"

    .prologue
    const-wide/16 v1, -0x1

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    .line 230
    iput p2, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->userId:I

    .line 231
    iput-object p3, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    .line 232
    iput p4, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 234
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 235
    iput-wide v1, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 236
    iput-wide v1, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    .line 238
    iget-object v0, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-wide/32 v2, 0x15180

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    return-void
.end method

.method constructor <init>(Landroid/content/SyncStorageEngine$AuthorityInfo;)V
    .locals 5
    .parameter "toCopy"

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iget-object v2, p1, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iput-object v2, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    .line 213
    iget v2, p1, Landroid/content/SyncStorageEngine$AuthorityInfo;->userId:I

    iput v2, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->userId:I

    .line 214
    iget-object v2, p1, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    .line 215
    iget v2, p1, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v2, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 216
    iget-boolean v2, p1, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    iput-boolean v2, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 217
    iget v2, p1, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    iput v2, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 218
    iget-wide v2, p1, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    iput-wide v2, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 219
    iget-wide v2, p1, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    iput-wide v2, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 220
    iget-wide v2, p1, Landroid/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    iput-wide v2, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    .line 222
    iget-object v2, p1, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 224
    .local v1, sync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    iget-object v3, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    new-instance v4, Landroid/os/Bundle;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {v4, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    .end local v1           #sync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_0
    return-void
.end method
