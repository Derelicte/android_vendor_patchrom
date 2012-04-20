.class Lcom/miui/supermarket/AppManagementFragment$SortByLocaleKey;
.super Ljava/lang/Object;
.source "AppManagementFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/AppManagementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortByLocaleKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/supermarket/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/supermarket/AppManagementFragment;


# direct methods
.method private constructor <init>(Lcom/miui/supermarket/AppManagementFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/miui/supermarket/AppManagementFragment$SortByLocaleKey;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/supermarket/AppManagementFragment;Lcom/miui/supermarket/AppManagementFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/miui/supermarket/AppManagementFragment$SortByLocaleKey;-><init>(Lcom/miui/supermarket/AppManagementFragment;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/supermarket/AppInfo;Lcom/miui/supermarket/AppInfo;)I
    .locals 4
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 280
    if-ne p1, p2, :cond_0

    .line 281
    const/4 v3, 0x0

    .line 290
    :goto_0
    return v3

    .line 282
    :cond_0
    if-nez p1, :cond_1

    .line 283
    const/4 v3, -0x1

    goto :goto_0

    .line 284
    :cond_1
    if-nez p2, :cond_2

    .line 285
    const/4 v3, 0x1

    goto :goto_0

    .line 287
    :cond_2
    invoke-static {}, Lmiui/util/LocaleUtils;->getIntance()Lmiui/util/LocaleUtils;

    move-result-object v2

    .line 288
    .local v2, locale:Lmiui/util/LocaleUtils;
    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/miui/supermarket/AppInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmiui/util/LocaleUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, key1:Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_4

    iget-object v3, p2, Lcom/miui/supermarket/AppInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmiui/util/LocaleUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, key2:Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 288
    .end local v0           #key1:Ljava/lang/String;
    .end local v1           #key2:Ljava/lang/String;
    :cond_3
    iget-object v0, p1, Lcom/miui/supermarket/AppInfo;->displayName:Ljava/lang/String;

    goto :goto_1

    .line 289
    .restart local v0       #key1:Ljava/lang/String;
    :cond_4
    iget-object v1, p2, Lcom/miui/supermarket/AppInfo;->displayName:Ljava/lang/String;

    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 277
    check-cast p1, Lcom/miui/supermarket/AppInfo;

    .end local p1
    check-cast p2, Lcom/miui/supermarket/AppInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/supermarket/AppManagementFragment$SortByLocaleKey;->compare(Lcom/miui/supermarket/AppInfo;Lcom/miui/supermarket/AppInfo;)I

    move-result v0

    return v0
.end method
