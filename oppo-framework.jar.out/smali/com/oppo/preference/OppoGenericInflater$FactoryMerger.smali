.class Lcom/oppo/preference/OppoGenericInflater$FactoryMerger;
.super Ljava/lang/Object;
.source "OppoGenericInflater.java"

# interfaces
.implements Lcom/oppo/preference/OppoGenericInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/preference/OppoGenericInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FactoryMerger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/oppo/preference/OppoGenericInflater$Factory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mF1:Lcom/oppo/preference/OppoGenericInflater$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oppo/preference/OppoGenericInflater$Factory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mF2:Lcom/oppo/preference/OppoGenericInflater$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oppo/preference/OppoGenericInflater$Factory",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oppo/preference/OppoGenericInflater$Factory;Lcom/oppo/preference/OppoGenericInflater$Factory;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/preference/OppoGenericInflater$Factory",
            "<TT;>;",
            "Lcom/oppo/preference/OppoGenericInflater$Factory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/oppo/preference/OppoGenericInflater$FactoryMerger;,"Lcom/oppo/preference/OppoGenericInflater$FactoryMerger<TT;>;"
    .local p1, f1:Lcom/oppo/preference/OppoGenericInflater$Factory;,"Lcom/oppo/preference/OppoGenericInflater$Factory<TT;>;"
    .local p2, f2:Lcom/oppo/preference/OppoGenericInflater$Factory;,"Lcom/oppo/preference/OppoGenericInflater$Factory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/oppo/preference/OppoGenericInflater$FactoryMerger;->mF1:Lcom/oppo/preference/OppoGenericInflater$Factory;

    .line 94
    iput-object p2, p0, Lcom/oppo/preference/OppoGenericInflater$FactoryMerger;->mF2:Lcom/oppo/preference/OppoGenericInflater$Factory;

    .line 95
    return-void
.end method


# virtual methods
.method public onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 2
    .parameter "name"
    .parameter "context"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, this:Lcom/oppo/preference/OppoGenericInflater$FactoryMerger;,"Lcom/oppo/preference/OppoGenericInflater$FactoryMerger<TT;>;"
    iget-object v1, p0, Lcom/oppo/preference/OppoGenericInflater$FactoryMerger;->mF1:Lcom/oppo/preference/OppoGenericInflater$Factory;

    invoke-interface {v1, p1, p2, p3}, Lcom/oppo/preference/OppoGenericInflater$Factory;->onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    .local v0, v:Ljava/lang/Object;,"TT;"
    if-eqz v0, :cond_0

    .line 101
    .end local v0           #v:Ljava/lang/Object;,"TT;"
    :goto_0
    return-object v0

    .restart local v0       #v:Ljava/lang/Object;,"TT;"
    :cond_0
    iget-object v1, p0, Lcom/oppo/preference/OppoGenericInflater$FactoryMerger;->mF2:Lcom/oppo/preference/OppoGenericInflater$Factory;

    invoke-interface {v1, p1, p2, p3}, Lcom/oppo/preference/OppoGenericInflater$Factory;->onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
