.class public Lcom/oppo/app/OppoNotifyingAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "OppoNotifyingAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/app/OppoNotifyingAsyncQueryHandler$AsyncQueryListener;
    }
.end annotation


# instance fields
.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/oppo/app/OppoNotifyingAsyncQueryHandler$AsyncQueryListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oppo/app/OppoNotifyingAsyncQueryHandler$AsyncQueryListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/oppo/app/OppoNotifyingAsyncQueryHandler;->setQueryListener(Lcom/oppo/app/OppoNotifyingAsyncQueryHandler$AsyncQueryListener;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/oppo/app/OppoNotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/app/OppoNotifyingAsyncQueryHandler$AsyncQueryListener;

    .line 83
    .local v0, listener:Lcom/oppo/app/OppoNotifyingAsyncQueryHandler$AsyncQueryListener;
    if-eqz v0, :cond_1

    .line 84
    invoke-interface {v0, p1, p2, p3}, Lcom/oppo/app/OppoNotifyingAsyncQueryHandler$AsyncQueryListener;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    if-eqz p3, :cond_0

    .line 86
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected onQueryEntitiesComplete(ILjava/lang/Object;Landroid/content/EntityIterator;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "iterator"

    .prologue
    .line 98
    iget-object v1, p0, Lcom/oppo/app/OppoNotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/app/OppoNotifyingAsyncQueryHandler$AsyncQueryListener;

    .line 99
    .local v0, listener:Lcom/oppo/app/OppoNotifyingAsyncQueryHandler$AsyncQueryListener;
    if-eqz v0, :cond_1

    .line 100
    invoke-interface {v0, p1, p2, p3}, Lcom/oppo/app/OppoNotifyingAsyncQueryHandler$AsyncQueryListener;->onQueryEntitiesComplete(ILjava/lang/Object;Landroid/content/EntityIterator;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    if-eqz p3, :cond_0

    .line 102
    invoke-interface {p3}, Landroid/content/EntityIterator;->close()V

    goto :goto_0
.end method

.method public setQueryListener(Lcom/oppo/app/OppoNotifyingAsyncQueryHandler$AsyncQueryListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 77
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oppo/app/OppoNotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    .line 78
    return-void
.end method
