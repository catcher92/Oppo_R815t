.class public interface abstract Landroid/os/IOppoExService;
.super Ljava/lang/Object;
.source "IOppoExService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IOppoExService$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerInputEvent(Landroid/os/IOppoExInputCallBack;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterInputEvent(Landroid/os/IOppoExInputCallBack;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
