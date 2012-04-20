.class Lcom/android/systemui/settings/ToggleStylePreference$1;
.super Ljava/lang/Object;
.source "ToggleStylePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleStylePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleStylePreference;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleStylePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleStylePreference$1;->this$0:Lcom/android/systemui/settings/ToggleStylePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleStylePreference$1;->this$0:Lcom/android/systemui/settings/ToggleStylePreference;

    #getter for: Lcom/android/systemui/settings/ToggleStylePreference;->mSinglePageText:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleStylePreference;->access$100(Lcom/android/systemui/settings/ToggleStylePreference;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleStylePreference$1;->this$0:Lcom/android/systemui/settings/ToggleStylePreference;

    #getter for: Lcom/android/systemui/settings/ToggleStylePreference;->mSinglePage:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleStylePreference;->access$000(Lcom/android/systemui/settings/ToggleStylePreference;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 29
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleStylePreference$1;->this$0:Lcom/android/systemui/settings/ToggleStylePreference;

    #getter for: Lcom/android/systemui/settings/ToggleStylePreference;->mCompactText:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleStylePreference;->access$300(Lcom/android/systemui/settings/ToggleStylePreference;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleStylePreference$1;->this$0:Lcom/android/systemui/settings/ToggleStylePreference;

    #getter for: Lcom/android/systemui/settings/ToggleStylePreference;->mCompact:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/settings/ToggleStylePreference;->access$200(Lcom/android/systemui/settings/ToggleStylePreference;)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 30
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleStylePreference$1;->this$0:Lcom/android/systemui/settings/ToggleStylePreference;

    #calls: Lcom/android/systemui/settings/ToggleStylePreference;->setSettingsFromUI()V
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleStylePreference;->access$400(Lcom/android/systemui/settings/ToggleStylePreference;)V

    .line 31
    return-void

    :cond_0
    move v0, v2

    .line 28
    goto :goto_0

    :cond_1
    move v1, v2

    .line 29
    goto :goto_1
.end method
