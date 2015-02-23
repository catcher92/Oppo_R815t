.class Lcom/oppo/preference/OppoPreferenceInflater;
.super Lcom/oppo/preference/OppoGenericInflater;
.source "OppoPreferenceInflater.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppo/preference/OppoGenericInflater",
        "<",
        "Lcom/oppo/preference/OppoPreference;",
        "Lcom/oppo/preference/OppoPreferenceGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTRA_TAG_NAME:Ljava/lang/String; = "extra"

.field private static final INTENT_TAG_NAME:Ljava/lang/String; = "intent"

.field private static final TAG:Ljava/lang/String; = "OppoPreferenceInflater"


# instance fields
.field private mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oppo/preference/OppoPreferenceManager;)V
    .locals 0
    .parameter "context"
    .parameter "preferenceManager"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/oppo/preference/OppoGenericInflater;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0, p2}, Lcom/oppo/preference/OppoPreferenceInflater;->init(Lcom/oppo/preference/OppoPreferenceManager;)V

    .line 54
    return-void
.end method

.method constructor <init>(Lcom/oppo/preference/OppoGenericInflater;Lcom/oppo/preference/OppoPreferenceManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "preferenceManager"
    .parameter "newContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/preference/OppoGenericInflater",
            "<",
            "Lcom/oppo/preference/OppoPreference;",
            "Lcom/oppo/preference/OppoPreferenceGroup;",
            ">;",
            "Lcom/oppo/preference/OppoPreferenceManager;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, original:Lcom/oppo/preference/OppoGenericInflater;,"Lcom/oppo/preference/OppoGenericInflater<Lcom/oppo/preference/OppoPreference;Lcom/oppo/preference/OppoPreferenceGroup;>;"
    invoke-direct {p0, p1, p3}, Lcom/oppo/preference/OppoGenericInflater;-><init>(Lcom/oppo/preference/OppoGenericInflater;Landroid/content/Context;)V

    .line 59
    invoke-direct {p0, p2}, Lcom/oppo/preference/OppoPreferenceInflater;->init(Lcom/oppo/preference/OppoPreferenceManager;)V

    .line 60
    return-void
.end method

.method private init(Lcom/oppo/preference/OppoPreferenceManager;)V
    .locals 1
    .parameter "preferenceManager"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/oppo/preference/OppoPreferenceInflater;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    .line 70
    const-string v0, "com.oppo.preference."

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoGenericInflater;->setDefaultPackage(Ljava/lang/String;)V

    .line 71
    return-void
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Lcom/oppo/preference/OppoGenericInflater;
    .locals 2
    .parameter "newContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/oppo/preference/OppoGenericInflater",
            "<",
            "Lcom/oppo/preference/OppoPreference;",
            "Lcom/oppo/preference/OppoPreferenceGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/oppo/preference/OppoPreferenceInflater;

    iget-object v1, p0, Lcom/oppo/preference/OppoPreferenceInflater;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-direct {v0, p0, v1, p1}, Lcom/oppo/preference/OppoPreferenceInflater;-><init>(Lcom/oppo/preference/OppoGenericInflater;Lcom/oppo/preference/OppoPreferenceManager;Landroid/content/Context;)V

    return-object v0
.end method

.method protected onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Lcom/oppo/preference/OppoPreference;Landroid/util/AttributeSet;)Z
    .locals 8
    .parameter "parser"
    .parameter "parentPreference"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 76
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, tag:Ljava/lang/String;
    const-string v5, "intent"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 79
    const/4 v2, 0x0

    .line 82
    .local v2, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/preference/OppoGenericInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p1, p3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 90
    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {p2, v2}, Lcom/oppo/preference/OppoPreference;->setIntent(Landroid/content/Intent;)V

    .line 109
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v4

    .line 84
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Error parsing preference"

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, ex:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 87
    throw v1

    .line 95
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #ex:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    const-string v5, "extra"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/oppo/preference/OppoGenericInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "extra"

    invoke-virtual {p2}, Lcom/oppo/preference/OppoPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v5, v6, p3, v7}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 99
    :try_start_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 101
    :catch_1
    move-exception v0

    .line 102
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Error parsing preference"

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 103
    .restart local v1       #ex:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 104
    throw v1

    .line 109
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #ex:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 43
    check-cast p2, Lcom/oppo/preference/OppoPreference;

    .end local p2
    invoke-virtual {p0, p1, p2, p3}, Lcom/oppo/preference/OppoPreferenceInflater;->onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Lcom/oppo/preference/OppoPreference;Landroid/util/AttributeSet;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic onMergeRoots(Lcom/oppo/preference/OppoGenericInflater$Parent;ZLcom/oppo/preference/OppoGenericInflater$Parent;)Lcom/oppo/preference/OppoGenericInflater$Parent;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    check-cast p1, Lcom/oppo/preference/OppoPreferenceGroup;

    .end local p1
    check-cast p3, Lcom/oppo/preference/OppoPreferenceGroup;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/oppo/preference/OppoPreferenceInflater;->onMergeRoots(Lcom/oppo/preference/OppoPreferenceGroup;ZLcom/oppo/preference/OppoPreferenceGroup;)Lcom/oppo/preference/OppoPreferenceGroup;

    move-result-object v0

    return-object v0
.end method

.method protected onMergeRoots(Lcom/oppo/preference/OppoPreferenceGroup;ZLcom/oppo/preference/OppoPreferenceGroup;)Lcom/oppo/preference/OppoPreferenceGroup;
    .locals 1
    .parameter "givenRoot"
    .parameter "attachToGivenRoot"
    .parameter "xmlRoot"

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/oppo/preference/OppoPreferenceInflater;->mPreferenceManager:Lcom/oppo/preference/OppoPreferenceManager;

    invoke-virtual {p3, v0}, Lcom/oppo/preference/OppoPreference;->onAttachedToHierarchy(Lcom/oppo/preference/OppoPreferenceManager;)V

    .line 121
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    move-object p3, p1

    goto :goto_0
.end method
