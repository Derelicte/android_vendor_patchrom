.class synthetic Lcom/miui/supermarket/NecessaryFragment$1;
.super Ljava/lang/Object;
.source "NecessaryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/NecessaryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$miui$supermarket$NecessaryFragment$AppInfoGroupStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 497
    invoke-static {}, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->values()[Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/supermarket/NecessaryFragment$1;->$SwitchMap$com$miui$supermarket$NecessaryFragment$AppInfoGroupStatus:[I

    :try_start_0
    sget-object v0, Lcom/miui/supermarket/NecessaryFragment$1;->$SwitchMap$com$miui$supermarket$NecessaryFragment$AppInfoGroupStatus:[I

    sget-object v1, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->INSTALLED:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    invoke-virtual {v1}, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/miui/supermarket/NecessaryFragment$1;->$SwitchMap$com$miui$supermarket$NecessaryFragment$AppInfoGroupStatus:[I

    sget-object v1, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->DOWNLOADING:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    invoke-virtual {v1}, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/miui/supermarket/NecessaryFragment$1;->$SwitchMap$com$miui$supermarket$NecessaryFragment$AppInfoGroupStatus:[I

    sget-object v1, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->SELECTED:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    invoke-virtual {v1}, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/miui/supermarket/NecessaryFragment$1;->$SwitchMap$com$miui$supermarket$NecessaryFragment$AppInfoGroupStatus:[I

    sget-object v1, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->UNSELECTED:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    invoke-virtual {v1}, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
