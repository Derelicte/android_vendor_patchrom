.class Lcom/android/systemui/settings/CameraKeyActionAppPicker$1;
.super Ljava/lang/Thread;
.source "CameraKeyActionAppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/CameraKeyActionAppPicker;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/CameraKeyActionAppPicker;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/CameraKeyActionAppPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/systemui/settings/CameraKeyActionAppPicker$1;->this$0:Lcom/android/systemui/settings/CameraKeyActionAppPicker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 48
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 49
    .local v4, mainIntent:Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iget-object v8, p0, Lcom/android/systemui/settings/CameraKeyActionAppPicker$1;->this$0:Lcom/android/systemui/settings/CameraKeyActionAppPicker;

    invoke-virtual {v8}, Lcom/android/systemui/settings/CameraKeyActionAppPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 52
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v4, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 54
    .local v3, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v8, Lcom/android/systemui/settings/CameraKeyActionAppPicker$1$1;

    invoke-direct {v8, p0, v5}, Lcom/android/systemui/settings/CameraKeyActionAppPicker$1$1;-><init>(Lcom/android/systemui/settings/CameraKeyActionAppPicker$1;Landroid/content/pm/PackageManager;)V

    invoke-static {v3, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 63
    iget-object v8, p0, Lcom/android/systemui/settings/CameraKeyActionAppPicker$1;->this$0:Lcom/android/systemui/settings/CameraKeyActionAppPicker;

    #getter for: Lcom/android/systemui/settings/CameraKeyActionAppPicker;->mActivities:Landroid/preference/PreferenceGroup;
    invoke-static {v8}, Lcom/android/systemui/settings/CameraKeyActionAppPicker;->access$000(Lcom/android/systemui/settings/CameraKeyActionAppPicker;)Landroid/preference/PreferenceGroup;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 64
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 65
    .local v7, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 66
    .local v2, info:Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_0

    .line 68
    new-instance v6, Landroid/preference/Preference;

    iget-object v8, p0, Lcom/android/systemui/settings/CameraKeyActionAppPicker$1;->this$0:Lcom/android/systemui/settings/CameraKeyActionAppPicker;

    invoke-direct {v6, v8, v12}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    .local v6, preference:Landroid/preference/Preference;
    invoke-virtual {v2, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v2, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 71
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {v6, v1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :cond_1
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 75
    iget-object v8, p0, Lcom/android/systemui/settings/CameraKeyActionAppPicker$1;->this$0:Lcom/android/systemui/settings/CameraKeyActionAppPicker;

    #getter for: Lcom/android/systemui/settings/CameraKeyActionAppPicker;->mActivities:Landroid/preference/PreferenceGroup;
    invoke-static {v8}, Lcom/android/systemui/settings/CameraKeyActionAppPicker;->access$000(Lcom/android/systemui/settings/CameraKeyActionAppPicker;)Landroid/preference/PreferenceGroup;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 77
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    .end local v2           #info:Landroid/content/pm/ActivityInfo;
    .end local v6           #preference:Landroid/preference/Preference;
    .end local v7           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/settings/CameraKeyActionAppPicker$1;->this$0:Lcom/android/systemui/settings/CameraKeyActionAppPicker;

    #setter for: Lcom/android/systemui/settings/CameraKeyActionAppPicker;->mLoading:Z
    invoke-static {v8, v11}, Lcom/android/systemui/settings/CameraKeyActionAppPicker;->access$102(Lcom/android/systemui/settings/CameraKeyActionAppPicker;Z)Z

    .line 78
    return-void
.end method
