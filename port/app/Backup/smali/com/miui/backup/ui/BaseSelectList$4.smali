.class Lcom/miui/backup/ui/BaseSelectList$4;
.super Ljava/lang/Object;
.source "BaseSelectList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/ui/BaseSelectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/backup/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field collator:Ljava/text/RuleBasedCollator;

.field final synthetic this$0:Lcom/miui/backup/ui/BaseSelectList;


# direct methods
.method constructor <init>(Lcom/miui/backup/ui/BaseSelectList;)V
    .locals 1
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/miui/backup/ui/BaseSelectList$4;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    iput-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$4;->collator:Ljava/text/RuleBasedCollator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/backup/AppInfo;Lcom/miui/backup/AppInfo;)I
    .locals 3
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$4;->collator:Ljava/text/RuleBasedCollator;

    iget-object v1, p1, Lcom/miui/backup/AppInfo;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/miui/backup/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 391
    check-cast p1, Lcom/miui/backup/AppInfo;

    .end local p1
    check-cast p2, Lcom/miui/backup/AppInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/backup/ui/BaseSelectList$4;->compare(Lcom/miui/backup/AppInfo;Lcom/miui/backup/AppInfo;)I

    move-result v0

    return v0
.end method
