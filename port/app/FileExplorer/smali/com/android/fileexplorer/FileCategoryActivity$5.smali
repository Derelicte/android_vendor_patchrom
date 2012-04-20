.class synthetic Lcom/android/fileexplorer/FileCategoryActivity$5;
.super Ljava/lang/Object;
.source "FileCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$fileexplorer$FileCategoryActivity$ViewPage:[I

.field static final synthetic $SwitchMap$com$android$fileexplorer$FileCategoryHelper$FileCategory:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 465
    invoke-static {}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->values()[Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/fileexplorer/FileCategoryActivity$5;->$SwitchMap$com$android$fileexplorer$FileCategoryHelper$FileCategory:[I

    :try_start_0
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$5;->$SwitchMap$com$android$fileexplorer$FileCategoryHelper$FileCategory:[I

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$5;->$SwitchMap$com$android$fileexplorer$FileCategoryHelper$FileCategory:[I

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$5;->$SwitchMap$com$android$fileexplorer$FileCategoryHelper$FileCategory:[I

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$5;->$SwitchMap$com$android$fileexplorer$FileCategoryHelper$FileCategory:[I

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Theme:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$5;->$SwitchMap$com$android$fileexplorer$FileCategoryHelper$FileCategory:[I

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$5;->$SwitchMap$com$android$fileexplorer$FileCategoryHelper$FileCategory:[I

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$5;->$SwitchMap$com$android$fileexplorer$FileCategoryHelper$FileCategory:[I

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$5;->$SwitchMap$com$android$fileexplorer$FileCategoryHelper$FileCategory:[I

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_7
    :try_start_8
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$5;->$SwitchMap$com$android$fileexplorer$FileCategoryHelper$FileCategory:[I

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Other:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    .line 203
    :goto_8
    invoke-static {}, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->values()[Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/fileexplorer/FileCategoryActivity$5;->$SwitchMap$com$android$fileexplorer$FileCategoryActivity$ViewPage:[I

    :try_start_9
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$5;->$SwitchMap$com$android$fileexplorer$FileCategoryActivity$ViewPage:[I

    sget-object v1, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Home:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_9
    :try_start_a
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$5;->$SwitchMap$com$android$fileexplorer$FileCategoryActivity$ViewPage:[I

    sget-object v1, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Favorite:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    :try_start_b
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$5;->$SwitchMap$com$android$fileexplorer$FileCategoryActivity$ViewPage:[I

    sget-object v1, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Category:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_b
    :try_start_c
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$5;->$SwitchMap$com$android$fileexplorer$FileCategoryActivity$ViewPage:[I

    sget-object v1, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->NoSD:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_c
    return-void

    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_9

    .line 465
    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v0

    goto :goto_4

    :catch_9
    move-exception v0

    goto/16 :goto_3

    :catch_a
    move-exception v0

    goto/16 :goto_2

    :catch_b
    move-exception v0

    goto/16 :goto_1

    :catch_c
    move-exception v0

    goto/16 :goto_0
.end method
