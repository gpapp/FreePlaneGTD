//=========================================================
// Freeplane GTD+
//
// Copyright (c)2014 Gergely Papp
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
//=========================================================
package freeplaneGTD

class Tag {
    String tagName
    def content = []
    def params = []

    Tag(tagName) {
        this.tagName = tagName
    }

    Tag(tagName, content, params = null) {
        this(tagName)
        if (content) {
            this.content = [content]
        }
        if (params) {
            this.params = params
        }
    }

    Tag addContent(String content) {
        this.content.push(content)
        return this
    }

    Tag addContent(Tag tag) {
        this.content.push(tag)
        return this
    }

    Tag addContent(tagName, content, params = null) {
        Tag tag = new Tag(tagName, content, params)
        this.content.push(tag)
        return this
    }

    Tag addChild(tagName, params = null) {
        Tag tag = new Tag(tagName)
        tag.params = params
        this.content.push(tag)
        return tag
    }

    String toString() {
        String retval = '<' + tagName
        params.each {
            retval += ' ' + it.key + '=\'' + it.value + '\''
        }
        retval += '>\n'
        content.each {
            // TODO: should sanitize HTML entities <> here!
            if (it instanceof String) {
                retval += it.replaceAll('&', '&amp;').replaceAll('<', '&lt;').replaceAll('>', '&gt;')
            } else
                retval += it
        }
        retval += '</' + tagName + '>\n'
        return retval
    }
}

