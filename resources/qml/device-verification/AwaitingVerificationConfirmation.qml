// SPDX-FileCopyrightText: 2021 Nheko Contributors
// SPDX-FileCopyrightText: 2022 Nheko Contributors
//
// SPDX-License-Identifier: GPL-3.0-or-later

import "../ui"
import QtQuick 2.3
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.10
import im.nheko 1.0

Pane {
    property string title: qsTr("Awaiting Confirmation")

    ColumnLayout {
        spacing: 16

        Label {
            id: content

            Layout.maximumWidth: 400
            Layout.fillHeight: true
            Layout.fillWidth: true
            wrapMode: Text.Wrap
            text: qsTr("Waiting for other side to complete verification.")
            color: Nheko.colors.text
            verticalAlignment: Text.AlignVCenter
        }

        Spinner {
            Layout.alignment: Qt.AlignHCenter
            foreground: Nheko.colors.mid
        }

        RowLayout {
            Button {
                Layout.alignment: Qt.AlignLeft
                text: qsTr("Cancel")
                onClicked: {
                    flow.cancel();
                    dialog.close();
                }
            }

            Item {
                Layout.fillWidth: true
            }

        }

    }

}
