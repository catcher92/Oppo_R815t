.class Lcom/oppo/preference/OppoTogglePreference$Listener;
.super Ljava/lang/Object;
.source "OppoTogglePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/preference/OppoTogglePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/preference/OppoTogglePreference;


# direct methods
.method private constructor <init>(Lcom/oppo/preference/OppoTogglePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/oppo/preference/OppoTogglePreference$Listener;->this$0:Lcom/oppo/preference/OppoTogglePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/preference/OppoTogglePreference;Lcom/oppo/preference/OppoTogglePreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/oppo/preference/OppoTogglePreference$Listener;-><init>(Lcom/oppo/preference/OppoTogglePreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 52
    iget-object v2, p0, Lcom/oppo/preference/OppoTogglePreference$Listener;->this$0:Lcom/oppo/preference/OppoTogglePreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/preference/OppoPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 55
    if-nez p2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 71
    :cond_0
    :goto_1
    return-void

    .line 55
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 59
    :cond_2
    iget-object v2, p0, Lcom/oppo/preference/OppoTogglePreference$Listener;->this$0:Lcom/oppo/preference/OppoTogglePreference;

    invoke-virtual {v2, p2}, Lcom/oppo/preference/OppoTwoStatePreference;->setChecked(Z)V

    .line 61
    iget-object v2, p0, Lcom/oppo/preference/OppoTogglePreference$Listener;->this$0:Lcom/oppo/preference/OppoTogglePreference;

    invoke-virtual {v2}, Lcom/oppo/preference/OppoPreference;->getPreferenceManager()Lcom/oppo/preference/OppoPreferenceManager;

    move-result-object v1

    .line 62
    .local v1, preferenceManager:Lcom/oppo/preference/OppoPreferenceManager;
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v1}, Lcom/oppo/preference/OppoPreferenceManager;->getOnPreferenceTreeClickListener()Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v0

    .line 65
    .local v0, listener:Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceTreeClickListener;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oppo/preference/OppoTogglePreference$Listener;->this$0:Lcom/oppo/preference/OppoTogglePreference;

    #getter for: Lcom/oppo/preference/OppoTogglePreference;->mPreferenceScreen:Lcom/oppo/preference/OppoPreferenceScreen;
    invoke-static {v2}, Lcom/oppo/preference/OppoTogglePreference;->access$100(Lcom/oppo/preference/OppoTogglePreference;)Lcom/oppo/preference/OppoPreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/preference/OppoTogglePreference$Listener;->this$0:Lcom/oppo/preference/OppoTogglePreference;

    invoke-interface {v0, v2, v3}, Lcom/oppo/preference/OppoPreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Lcom/oppo/preference/OppoPreferenceScreen;Lcom/oppo/preference/OppoPreference;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1
.end method
