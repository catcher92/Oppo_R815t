.class public Lcom/oppo/preference/OppoPreferenceCategory;
.super Lcom/oppo/preference/OppoPreferenceGroup;
.source "OppoPreferenceCategory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoPreferenceCategory"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/preference/OppoPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    const v0, 0xc01040a

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/preference/OppoPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/preference/OppoPreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method protected onPrepareAddPreference(Lcom/oppo/preference/OppoPreference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 53
    instance-of v0, p1, Lcom/oppo/preference/OppoPreferenceCategory;

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a OppoPreferenceCategory directly to a OppoPreferenceCategory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoPreferenceGroup;->onPrepareAddPreference(Lcom/oppo/preference/OppoPreference;)Z

    move-result v0

    return v0
.end method
